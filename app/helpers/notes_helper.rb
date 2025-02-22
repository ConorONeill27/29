module NotesHelper
  MAX_BODY_CHARS = 25

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      fenced_code_blocks: true,
      tables: true,
      strikethrough: true,
      lax_spacing: true,
      space_after_headers: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

  def shorten(text)
    return text if text.length < MAX_BODY_CHARS

    text[1..MAX_BODY_CHARS] + "..."
  end
end
