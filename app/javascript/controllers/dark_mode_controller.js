import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="dark-mode"
export default class extends Controller {
  static classes = ["light", "dark"];
  static values = { colorScheme: String };

  initialize() {
    if ("colorScheme" in localStorage) {
      this.colorSchemeValue = localStorage.colorScheme;
    }

    // to listen for "system setting" changes
    window
      .matchMedia("(prefers-color-scheme: dark)")
      .addEventListener("change", this.#dispatchChange);
  }

  toggle(event) {
    this.colorSchemeValue = event.detail.item.value;
  }

  async colorSchemeValueChanged() {
    localStorage.colorScheme = this.colorSchemeValue;

    // wait for next frame
    await new Promise(requestAnimationFrame);

    this.#dispatchChange();
  }

  updateColorScheme(event) {
    const { colorScheme } = event.detail;

    this.darkClasses.forEach((darkClass) => {
      document.documentElement.classList.toggle(
        darkClass,
        this.#isDark(colorScheme),
      );
    });

    this.lightClasses.forEach((lightClass) => {
      document.documentElement.classList.toggle(
        lightClass,
        !this.#isDark(colorScheme),
      );
    });
  }

  #isDark(colorScheme) {
    if (colorScheme === "auto") {
      return window.matchMedia("(prefers-color-scheme: dark)").matches;
    }

    return colorScheme === "dark";
  }

  #dispatchChange = () => {
    this.dispatch("change", { detail: { colorScheme: this.colorSchemeValue } });
  };
}
