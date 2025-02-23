#require 'markdoc'

class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  # app/controllers/notes_controller.rb
class NotesController < ApplicationController
  before_action :set_notebook

  def index
    @notes = @notebook.notes
  end

  def show
    @note = @notebook.notes.find(params[:id])
  end

  def new
    @note = @notebook.notes.build
  end

  def create
    @note = @notebook.notes.build(note_params)
    if @note.save
      redirect_to [@notebook, @note], notice: 'Note was successfully created.'
    else
      render :new
    end
  end

  private



end


  def show
    @note = Note.find(params[:id])
    raw_markdown = params[:content]
    @html = Markdoc.to_html(raw_markdown)
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

  def set_notebook
    @notebook = current_user.notebooks.find(params[:notebook_id])
  end

  def note_params
    params.require(:note).permit(:title, :body)
  end
end
