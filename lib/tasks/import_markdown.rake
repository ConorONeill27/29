namespace :documents do
  desc "Reimport markdown files and generate bullet points (set MARKDOWN_PATH env variable)"
  task reimport: :environment do
    
    Document.destroy_all

    
    path_pattern = ENV["MARKDOWN_PATH"] || Rails.root.join("data", "markdown", "*.md").to_s

    imported_count = 0
    Dir.glob(path_pattern).each do |file|
      content = File.read(file)
      doc = Document.create!(
        filename: File.basename(file),
        content: content
      )
      imported_count += 1
      puts "Imported 

      
      
      bullet_points = generate_bullet_points(content)
      doc.update!(bullet_points: bullet_points)
      puts "Generated bullet points for 
    end
    puts "Documents reimported. Imported count: 
  end

  
  def generate_bullet_points(text)
    
    prompt = <<~PROMPT
      Convert the following document text into a list of bullet points that summarize its key points:

      
    PROMPT

    
    api_key = "GEMINI_API_KEY"
    url = URI("https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["Content-Type"] = "application/json"
    payload = {
      contents: [
        { parts: [ { text: prompt } ] }
      ]
    }
    request.body = payload.to_json

    response = http.request(request)
    if response.code.to_i == 200
      data = JSON.parse(response.body)
      
      bullet_text = data["candidates"]&.first&.dig("content", "parts", 0, "text")
      bullet_text || "No bullet points generated."
    else
      "Error generating bullet points: API returned status 
    end
  rescue => e
    "Error generating bullet points: 
  end
end