const Markdoc = require('@markdoc/markdoc');

function renderMarkdown(markdown) {
  const ast = Markdoc.parse(markdown);
  const content = Markdoc.transform(ast);
  return Markdoc.renderers.html(content);
}

globalThis.renderMarkdown = renderMarkdown;
