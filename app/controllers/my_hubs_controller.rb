class MyHubsController < ApplicationController
  require "net/http"
  require "uri"
  require "json"

  def index
    session[:conversation] ||= []
    @chat_context = load_markdown_context
  end

  def chat_message
    user_message = params[:message]
    session[:conversation] ||= []
    session[:conversation] << "You: #{user_message}"

    markdown_context = load_markdown_context
    Rails.logger.debug "Loaded markdown context (#{markdown_context.size} characters)"

    prompt = <<~PROMPT
      Below are the contents of the provided documents:
      #{markdown_context}

      Based on the above, please answer the following question:
      #{user_message}
    PROMPT

    api_key = ENV["GEMINI_API_KEY"]
    url = URI("https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=#{api_key}")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["Content-Type"] = "application/json"
    request.body = { contents: [{ parts: [{ text: prompt }] }] }.to_json

    response = http.request(request)

    if response.code.to_i != 200
      render json: { error: "API request failed with status #{response.code}" }, status: :bad_request
    else
      data = JSON.parse(response.body)
      Rails.logger.debug "API response: #{data.inspect}"

      bot_reply = data.dig("candidates", 0, "content", "parts", 0, "text") || "No reply received."
      session[:conversation] << "Bot: #{bot_reply}"
      render json: { reply: bot_reply }
    end
  rescue => e
    render json: { error: "Error: #{e.message}" }, status: :internal_server_error
  end

  private

  def load_markdown_context
    folder = ENV["MARKDOWN_PATH"] || Rails.root.join("data", "markdown", "*.md").to_s
    Dir.glob(folder).map do |file|
      text = File.read(file)
      plain_text = text.gsub(/[#>*_`\[\]\(\)]/, "")
      "Filename: #{File.basename(file)}\nText:\n#{plain_text}\n"
    end.join("\n---\n")
  end
end
