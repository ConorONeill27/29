# app/helpers/markdown_helper.rb
module MarkdownHelper
  def render_markdown(content)
    context = MiniRacer::Context.new
    markdoc_js = Rails.root.join('markdoc/dist/index.js').read
    context.eval(markdoc_js)
    context.call('renderMarkdown', content).html_safe
  end
end
