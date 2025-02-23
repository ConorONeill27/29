class AddTranscriptionToRecordings < ActiveRecord::Migration[6.0]
  def change
    add_column :recordings, :transcription, :text
  end
end
