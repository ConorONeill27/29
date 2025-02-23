require "chatgpt"

class ChatController < ApplicationController
  CLIENT = ChatGPT::Client.new(ENV["OPENAI_API_KEY"])

  def summarize_documents
    notes =
      @current_user
        &.organizations
        &.includes(:notes)
        &.flat_map(&:notes)
        &.uniq
        &.map(&:body)
        &.join(" ")

    response =
      CLIENT.chat(
        [
          {
            model: "gpt-3.5-turbo",
            role: "user",
            content:
              "You will get an unordered list of notes from a large company. You are an intern who really wants to impress his boss, here is his question: #{params[:prompt]}.

            And here are the notes: #{notes}"
          }
        ]
      )

    Rails.logger.debug("response: " + response)

    render json: response["choices"][0]["message"]["content"]
  end

  private

  def chat_params
    params.require(:chat).permit(:prompt)
  end
end
