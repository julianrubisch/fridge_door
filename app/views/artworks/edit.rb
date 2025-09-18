# frozen_string_literal: true

class Views::Artworks::Edit < Views::Base
  include Phlex::Rails::Helpers::Routes
  include Phlex::Rails::Helpers::ContentFor
  include Phlex::Rails::Helpers::DOMID

  def initialize(artwork)
    @artwork = artwork
  end

  def view_template
    content_for :title, "Editing artwork"

    content_for :main_header do
      render Components::PageHeader.new do |header|
        header.title_bar { |title_bar|
          div(class: "wa-cluster") {
            title_bar.leading_action {
              render Components::WebAwesome::WaButton.new(href: artworks_path, appearance: :plain) {
                render Components::WebAwesome::WaIcon.new(name: "arrow-left", variant: :regular, label: "Back to artworks")
              }
            }

            title_bar.title { "Editing artwork" }
          }
        }
      end
    end

    section {
      render partial("form", artwork: @artwork)
    }
  end
end
