namespace :documents do
  desc "Reimport markdown files and generate bullet points (set MARKDOWN_PATH env variable)"
  task reimport: :environment do
    Document.destroy_all

    path_pattern = Rails.root.join("data", "markdown", "*.md").to_s

    imported_count = 0
    Dir.glob(path_pattern).each do |file|
      content = File.read(file)
      doc = Document.create!(
        filename: File.basename(file),
        content: content
      )
      imported_count += 1
      puts "Imported #{file}"

      bullet_points = generate_bullet_points(content)
      doc.update!(bullet_points: bullet_points)
      puts "Generated bullet points for #{file}"
    end
    puts "Documents reimported. Imported count: #{imported_count}"
  end

  # Generic bullet point generator that splits the text into sentences
  # and returns the first 5 sentences as bullet points.
  def generate_bullet_points(text)
    sentences = text.split(/(?<=[.!?])\s+/)
    bullet_points = sentences.first(5)
    bullet_points.join("\n- ") # Join with a bullet marker
  end
end
