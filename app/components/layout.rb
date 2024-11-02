# frozen_string_literal: true

class Components::Layout < Components::Base
  include Phlex::Rails::Layout
  include Phlex::Rails::Helpers::ContentFor

  register_output_helper :vite_client_tag
  register_output_helper :vite_javascript_tag
  register_output_helper :combobox_style_tag

  def view_template(&block)
    doctype

    html do
      head do
        title { content_for(:title) || Rails.application.name }
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        meta name: "view-transition", content: "same-origin"
        meta name: "turbo-refresh-method", content: "morph"
        meta name: "turbo-refresh-scroll", content: "preserve"

        csp_meta_tag
        csrf_meta_tags

        combobox_style_tag
        stylesheet_link_tag "https://early.webawesome.com/webawesome@3.0.0-alpha.4/dist/themes/default.css"
        stylesheet_link_tag "application", data_turbo_track: "reload"
        javascript_include_tag "https://early.webawesome.com/webawesome@3.0.0-alpha.4/dist/webawesome.loader.js", type: "module", async: true, defer: true

        script {
          safe <<~JS
            function isDark(colorScheme) {
              if (colorScheme === "auto") {
                return window.matchMedia("(prefers-color-scheme: dark)").matches;
              }

              return colorScheme === "dark";
            }

            if("colorScheme" in localStorage) {
              document.documentElement.classList.toggle("wa-theme-default-dark", isDark(localStorage.colorScheme));
              document.documentElement.classList.toggle("theme-dark", isDark(localStorage.colorScheme));

              document.documentElement.classList.toggle("wa-theme-default-light", !isDark(localStorage.colorScheme));
              document.documentElement.classList.toggle("theme-light", !isDark(localStorage.colorScheme));
            }
JS
        }

        vite_client_tag
        vite_javascript_tag "application"
      end

      body(data: {
           controller: "dark-mode",
           action: "dark-mode:change->dark-mode#updateColorScheme",
           dark_mode_dark_class: "wa-theme-default-dark theme-dark",
           dark_mode_light_class: "wa-theme-default-light theme-light"
         }) do
        div(class: "site-wrapper") do
          render SiteHeader.new

          main(class: "container is-max-desktop px-4", &block)

          footer(class: "footer mt-6") do
            div(class: "content has-text-centered") {
              p {
                "Weisslich Template by Julian Rubisch"
              }
            }
          end
        end
      end
    end
  end
end
