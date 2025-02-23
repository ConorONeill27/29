class AddTranscriptionToRecordings < ActiveRecord::Migration[8.0]
  def change
    add_column :recordings, :transcription, :text
  end
end
