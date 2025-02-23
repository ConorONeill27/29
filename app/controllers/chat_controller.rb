class ChatController < ApplicationController
  def index
    @speech = read_speech(Recording.find[params[:id]])
  end

  def show
    @speech = read_speech(Recording.find[params[:id]])
  end

  def new
    @recording = Recording.new(recording_params)
    if @recording.save
      redirect_to @recording, notice: "Recording was successfully saved."
    else
      render :new
    end
  end

  private

  def recording_params
    params.require(:recording).permit(:audio)
  end
end
