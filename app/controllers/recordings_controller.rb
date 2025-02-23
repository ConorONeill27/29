class RecordingsController < ApplicationController
  def index
    @recordings = Recording.all
  end

  def show
    @recording = Recording.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @recording }
    end
  end

  def new
    @recording = Recording.new
  end

  def edit
    @recording = Recording.find(params[:id])
  end

  def create
    @recording = Recording.new(recording_params)

    if @recording.save
      ProcessAudioJob.perform_now(@recording.id)
      render json: {id: @recording.id}
    else
      Rails.logger.error(
        "Failed to save recording: #{@recording.errors.full_messages.join(", ")}"
      )
      render :new
    end
  end

  def update
    @recording = Recording.find(params[:id])
    if @recording.update(note_params)
      redirect_to @recording, notice: "Recording was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @recording = Recording.find(params[:id])
    @recording.destroy
    redirect_to recording_url, notice: "Recording was successfully destroyed."
  end

  private

  def recording_params
    params.expect(recording: %i[audio transcription])
  end
end
