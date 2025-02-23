class NotesController < ApplicationController
  before_action :set_notebooks

  def index
    @notes = @notebooks&.notes&.flatten&.uniq
  end

  def show
    @note = @notebook.notes.find(params[:id])
  end

  def download
    note = Note.find(params[:id])

    send_data note.body,
      filename: "#{note.title}.md",
      type: "text/plain",
      disposition: "attachment"
  end

  def new
    @note = @notebook.notes.build
  end

  def create
    @note = @notebook.notes.build(note_params)
    if @note.save
      redirect_to [@notebook, @note], notice: "Note was successfully created."
    else
      render :new
    end
  end

  private

  def edit
    @note = Note.find(params[:id])
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

  def set_notebooks
    @notebooks = current_user.notebooks
  end

  def note_params
    params.require(:note).permit(:title, :body)
  end
end
