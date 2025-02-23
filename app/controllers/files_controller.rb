# app/controllers/files_controller.rb
class FilesController < ApplicationController
  def employ_notes_files
    files_path = Rails.root.join('public', 'Employee_Notes')
    # Select only .md files (ignoring "." and "..")
    files = Dir.entries(files_path).select { |f| f.end_with?('.md') }
    render json: files
  end
end
