# frozen_string_literal: true

class Views::Artists::New < Views::Base
  include Phlex::Rails::Helpers::Routes
  include Phlex::Rails::Helpers::ContentFor
  include Phlex::Rails::Helpers::DOMID

  def initialize(artist)
    @artist = artist
  end

  def view_template
    content_for :title, "New artist"

    content_for :main_header do
      render Components::PageHeader.new do |header|
        header.title_bar { |title_bar|
          title_bar.leading_action {
            render Components::WebAwesome::WaButton.new(href: artists_path, appearance: :plain) {
              render Components::WebAwesome::WaIcon.new(name: "arrow-left", variant: :regular, label: "Back to artists")
            }
          }

          title_bar.title { "New artist" }
        }
      end
    end

    section {
      render partial("form", artist: @artist)
    }
  end
end
