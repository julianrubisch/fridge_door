# frozen_string_literal: true

class Views::Artworks::Show < Views::Base
  include Phlex::Rails::Helpers::Routes
  include Phlex::Rails::Helpers::ContentFor
  include Phlex::Rails::Helpers::DOMID
  include Phlex::Rails::Helpers::ButtonTo

  def initialize(artwork)
    @artwork = artwork
  end

  def view_template
    content_for :title, "Artwork"

    content_for :main_header do
      render Components::PageHeader.new do |header|
        header.title_bar { |title_bar|
          div(class: "wa-cluster") {
            title_bar.leading_action {
              render Components::WebAwesome::WaButton.new(href: artworks_path, appearance: :plain) {
                render Components::WebAwesome::WaIcon.new(name: "arrow-left", variant: :regular, label: "Back to artworks")
              }
            }

            title_bar.title {
              # add title
            }
          }

          title_bar.actions {
            render Components::WebAwesome::WaButton.new(href: edit_artwork_path(@artwork), appearance: :plain) {
              render Components::WebAwesome::WaIcon.new(name: "pen", variant: :regular, label: "Edit artwork") 
            }

            button_to @artwork, method: :delete, data: { turbo_confirm: "Are you sure?" } do
              render Components::WebAwesome::WaButton.new(appearance: :plain) {
                render Components::WebAwesome::WaIcon.new(name: "trash", variant: :regular, label: "Destroy artwork")
              }
            end
          }
        }
      end
    end

    section {
      # add body here
    }
  end
end
