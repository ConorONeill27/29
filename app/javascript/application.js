import { Application } from "@hotwired/stimulus";
import MarkdownController from "./controllers/markdown_controller";

const application = Application.start();
application.register("markdown", MarkdownController);