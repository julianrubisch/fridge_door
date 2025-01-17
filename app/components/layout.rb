# frozen_string_literal: true

class Components::Layout < Components::Base
  include Phlex::Rails::Layout
  include Phlex::Rails::Helpers::ContentFor
  include Phlex::Rails::Helpers::Notice

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
        stylesheet_link_tag "https://early.webawesome.com/webawesome@3.0.0-alpha.9/dist/styles/themes/default.css"
        stylesheet_link_tag "application", data_turbo_track: "reload"
        javascript_include_tag "https://early.webawesome.com/webawesome@3.0.0-alpha.9/dist/webawesome.loader.js", type: "module", async: true, defer: true

        script {
          safe <<~JS
            function isDark(colorScheme) {
              if (colorScheme === "auto") {
                return window.matchMedia("(prefers-color-scheme: dark)").matches;
              }

              return colorScheme === "dark";
            }

            if("colorScheme" in localStorage) {
              document.documentElement.classList.toggle("wa-dark", isDark(localStorage.colorScheme));
              document.documentElement.classList.toggle("theme-dark", isDark(localStorage.colorScheme));

              document.documentElement.classList.toggle("wa-light", !isDark(localStorage.colorScheme));
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
           dark_mode_dark_class: "wa-dark theme-dark",
           dark_mode_light_class: "wa-light theme-light"
         }) do
        render Components::WebAwesome::WaPage.new(disable_navigation_toggle: true) do
          header(slot: "header") { render SiteHeader.new }

          header(slot: "main-header", class: "container is-max-desktop wa-stack wa-gap-xl") {
            if notice.present?
              render Components::WebAwesome::WaCallout.new(variant: "success") {
                render Components::WebAwesome::WaIcon.new(slot: "icon", name: "circle-check", variant: :regular)

                span { notice }
              }
            end

            yield :main_header
          }

          main(class: "container is-max-desktop wa-stack wa-gap-xl", &block)

          footer(slot: "footer", class: "footer") do
            div(class: "has-text-centered") {
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
