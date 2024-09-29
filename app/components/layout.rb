# frozen_string_literal: true

class Components::Layout < Components::Base
  include Phlex::Rails::Layout
  include Phlex::Rails::Helpers::ContentFor

  def view_template(&block)
    doctype

    html do
      head do
        title { content_for(:title) || "Weisslich" }
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        csp_meta_tag
        csrf_meta_tags
        stylesheet_link_tag "application", data_turbo_track: "reload"
        stylesheet_link_tag "https://early.webawesome.com/webawesome@3.0.0-alpha.4/dist/themes/default.css"
        javascript_importmap_tags
        javascript_include_tag "https://early.webawesome.com/webawesome@3.0.0-alpha.4/dist/webawesome.loader.js", type: "module"
      end

      body(data: {
           controller: "dark-mode",
           dark_mode_dark_class: "wa-theme-default-dark theme-dark",
           dark_mode_light_class: "wa-theme-default-light theme-light"
         }) do
        render SiteHeaderComponent.new
        main(class: "container is-max-desktop px-4", &block)
      end
    end
  end
end
