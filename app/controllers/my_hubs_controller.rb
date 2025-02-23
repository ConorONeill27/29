class MyHubsController < ApplicationController
  require "net/http"
  require "uri"
  require "json"

  # This method loads all markdown files from "C:/Users/Tomas/Documents/Employee Notes"
  # It reads each file, strips some markdown formatting characters, and concatenates the content.
  def load_markdown_context
    folder = Rails.root.join("data", "markdown", "*.md").to_s
    Dir
      .glob(folder)
      .map do |file|
        text = File.read(file)
        plain_text = text.gsub(/[#>*_`\[\]\(\)]/, "")
        "Filename: #{File.basename(file)}\nText:\n#{plain_text}\n"
      end
      .join("\n---\n")
  end

  # Minimal implementation to generate graph data from files.
  def load_graph_data_from_folder
    folder = "C:/Users/Tomas/Documents/Employee_Notes/*.md"
    Dir.glob(folder).map do |file|
      content = File.read(file)
      # Replace these calls with your actual implementations if available.
      keywords = extract_proper_nouns(content) rescue []  
      classification = classify_text(content) rescue "Unclassified"
      { name: File.basename(file), keywords: keywords, classification: classification }
    end
  end

  # Single graph_data method (removed duplicate)
  def graph_data
    docs = load_graph_data_from_folder
    render json: docs
  end
  
  # Renders the My Hub page and initializes the conversation session.
  def index
    session[:conversation] ||= []
  end

  # Handles the message sent from the chat interface.
  def message
    user_message = message_params.message
    message_params.conversation ||= []

    message_params.conversation << "You: #{user_message}"

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

    payload = {contents: [{parts: [{text: prompt}]}]}
    request.body = payload.to_json

    response = http.request(request)

    if response.code.to_i != 200
      render json: {
               error: "API request failed with status #{response.code}"
             },
        status: :bad_request
    else
      data = JSON.parse(response.body)
      Rails.logger.debug "API response: #{data.inspect}"

      bot_reply =
        if data["candidates"] && data["candidates"].first &&
            data["candidates"].first["content"] &&
            data["candidates"].first["content"]["parts"] &&
            data["candidates"].first["content"]["parts"].first
          data["candidates"].first["content"]["parts"].first["text"]
        else
          "No reply received."
        end

      session[:conversation] << "Bot: #{bot_reply}"
      render json: {reply: bot_reply}
    end
  rescue => e
    render json: {
             error: "Error: #{e.message}"
           },
      status: :internal_server_error
  end

  # This 'new' action appears to be handling recording creation.
  # If this is not needed for your markdown functionality, consider removing or renaming it.
  def new
    @recording = Recording.new(recording_params)
    if @recording.save
      redirect_to @recording, notice: "Recording was successfully saved."
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:conversation)
  end
end
