class NotesController < ApplicationController
  def index
    @notes = Notes.all
  end

  def by_id
    @note = Notes.find(params[:id])
  end
end
