import { Controller } from "@hotwired/stimulus";
import Markdoc from "@markdoc/markdoc";

export default class extends Controller {
  static targets = ["editor", "preview"];

  connect() {
    this.originalContent = this.editorTarget.innerText;
  }

  edit() {
    this.editorTarget.contentEditable = true;
    this.editorTarget.focus();
  }

  save() {
    this.editorTarget.contentEditable = false;
    this.renderMarkdown();
  }

  renderMarkdown() {
    const markdown = this.editorTarget.innerText;
    const ast = Markdoc.parse(markdown);
    const content = Markdoc.transform(ast);
    this.previewTarget.innerHTML = Markdoc.renderers.html(content);
  }
}
