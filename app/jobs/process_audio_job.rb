class ProcessAudioJob < ApplicationJob
  queue_as :default

  def perform(recording_id)
    recording = Recording.find(recording_id)
    recording.process_audio_file
    recording.save!
  end
end
