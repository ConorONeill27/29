class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note, notice: "Note was successfully created."
    else
      render :new
    end
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
    params.require(:note).permit(:title, :body)
  end
end
