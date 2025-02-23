class NotesController < ApplicationController
  def index
    @notes =
      @current_user&.organizations&.includes(:notes)&.flat_map(&:notes)&.uniq
  end

  def show
    @note = Note.find(params[:id])

    @notes =
      @current_user&.organizations&.includes(:notes)&.flat_map(&:notes)&.uniq
  end

  def download
    note = Note.find(params[:id])

    send_data note.body,
      filename: "#{note.title}.md",
      type: "text/plain",
      disposition: "attachment"
  end

  def new
    @note = Note.new
  end

  def create
    # Find the organization by its ID from params
    organization = Organization.find(params[:note][:organization_id])

    # Create a new note and associate it with the organization
    @note = organization.notes.new(note_params)

    if @note.save
      redirect_to @note, notice: "Note was successfully created."
    else
      render :new
    end
  end

  private

  def edit
    Rails.logger.debug("params: " + params[:id])
    Rails.logger.debug("note: " + Note.find(params[:id]))

    @note = Note.find(params[:id])

    @notes =
      @current_user&.organizations&.includes(:notes)&.flat_map(&:notes)&.uniq
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to @note, notice: "Note was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to note_url, notice: "Note was successfully destroyed."
  end

  private

  def note_params
    params.require(:note).permit(:title, :body, :organization_id)
  end
end
