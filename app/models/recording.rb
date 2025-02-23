class Recording < ApplicationRecord
  has_one_attached :audio
  validates :transcription, presence: true, on: :update

  after_commit :process_audio_file, on: :create

  def process_audio_file
    return unless audio.attached?

    audio.open do |file|
      # Define output wav file path
      wav_file_path =
        "#{File.dirname(file.path)}/#{File.basename(file.path, ".*")}.wav"

      # Convert WebM to WAV
      convert_command =
        "ffmpeg -i #{file.path} -vn -acodec pcm_s16le -ar 16000 -ac 1 #{wav_file_path}"
      system(convert_command)

      json_output_path = "#{wav_file_path}.json"

      command =
        "sh -c 'cd $DEVENV_ROOT &> /dev/null; whisper-cpp #{wav_file_path} -m ./ggml-base.en.bin --output-json #{json_output_path}'"
      system(command)

      if File.exist?(json_output_path)
        begin
          json_content = File.read(json_output_path)
          transcription_data = JSON.parse(json_content)
          self.transcription = transcription_data["transcription"][0]["text"]
        rescue JSON::ParserError => e
          Rails.logger.error("JSON Parsing Error: #{e.message}")
        ensure
          File.delete(json_output_path)
        end
      else
        Rails.logger.error("Whisper JSON output file not found.")
      end
    end
  end
end
