class ChatController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'json'

  # Render the chat interface
  def index
    # Initialize conversation history in the session if not present
    session[:conversation] ||= []
  end

  # Receives a message, stores it with context, calls the Gemini API, and returns the bot's reply.
  def message
    user_message = params[:message]
    session[:conversation] ||= []
    
    # Append the user's message to the conversation history.
    session[:conversation] << "You: #{user_message}"
    
    # Build the full conversation context by joining all messages with a newline.
    conversation_context = session[:conversation].join("\n")
    # ENV["GEMINI_API_KEY"]
    api_key = "GEMINI_API_KEY"
    url = URI("https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=#{api_key}")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["Content-Type"] = "application/json"

    # Pass the full conversation context as the prompt
    payload = {
      contents: [
        {
          parts: [
            { text: conversation_context }
          ]
        }
      ]
    }
    request.body = payload.to_json

    response = http.request(request)

    if response.code.to_i != 200
      render json: { error: "API request failed with status #{response.code}" }, status: :bad_request
    else
      data = JSON.parse(response.body)
      Rails.logger.debug "API response: #{data.inspect}"
      
      # Extract the bot's reply from the response structure
      bot_reply = if data["candidates"] &&
                     data["candidates"].first &&
                     data["candidates"].first["content"] &&
                     data["candidates"].first["content"]["parts"] &&
                     data["candidates"].first["content"]["parts"].first
                    data["candidates"].first["content"]["parts"].first["text"]
                  else
                    "No reply received."
                  end

      # Append the bot's reply to the conversation context
      session[:conversation] << "Bot: #{bot_reply}"
      
      render json: { reply: bot_reply }
    end
  rescue => e
    render json: { error: "Error: #{e.message}" }, status: :internal_server_error
  end
end
