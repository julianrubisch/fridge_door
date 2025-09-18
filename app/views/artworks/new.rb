# frozen_string_literal: true

class Views::Artworks::New < Views::Base
  include Phlex::Rails::Helpers::Routes
  include Phlex::Rails::Helpers::ContentFor
  include Phlex::Rails::Helpers::DOMID

  def initialize(artwork)
    @artwork = artwork
  end

  def view_template
    content_for :title, "New artwork"

    content_for :main_header do
      render Components::PageHeader.new do |header|
        header.title_bar { |title_bar|
          title_bar.leading_action {
            render Components::WebAwesome::WaButton.new(href: artworks_path, appearance: :plain) {
              render Components::WebAwesome::WaIcon.new(name: "arrow-left", variant: :regular, label: "Back to artworks")
            }
          }

          title_bar.title { "New artwork" }
        }
      end
    end

    section {
      render partial("form", artwork: @artwork)
    }
  end
end
