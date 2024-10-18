import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="radio-dropdown"
export default class extends Controller {
  static targets = ["icon", "label"];
  static values = {
    key: { type: String, default: "value" },
  };

  updateSelection(event) {
    const menu = this.element;
    const value = event.detail[this.keyValue];

    [...menu.querySelectorAll("wa-menu-item")].map(
      (item) => (item.checked = item.getAttribute("value") === value),
    );
  }
}
