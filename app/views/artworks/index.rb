# frozen_string_literal: true

class Views::Artworks::Index < Views::Base
  include Phlex::Rails::Helpers::Routes
  include Phlex::Rails::Helpers::ContentFor
  include Phlex::Rails::Helpers::DOMID
  include Phlex::Rails::Helpers::ButtonTo

  def initialize(artworks)
    @artworks = artworks
  end

  def view_template
    content_for :title, "Artworks"

    content_for :main_header do
      render Components::PageHeader.new do |header|
        header.title_bar { |title_bar|
          title_bar.title {
            # add title
          }

          title_bar.actions {
            render Components::WebAwesome::WaButton.new(appearance: :filled, variant: :brand, size: :small, href: new_artwork_path) {
              render Components::WebAwesome::WaIcon.new(slot: "start", name: "plus", variant: "solid")
              span { "New artwork" }
            }
          }
        }
      end
    end

    render Components::Grid.new(id: "artworks") {
      @artworks.map { |artwork|
        render Components::GridCell.new(id: dom_id(artwork)) {
          div {
            # add card body
          }

          div(slot: "footer", class: "wa-split wa-align-items-center") {
            render Components::WebAwesome::WaButton.new(appearance: :outlined, variant: :brand, href: artwork_path(artwork)) {
              "More Info"
            }

            div(class: "wa-cluster") {
              render Components::WebAwesome::WaButton.new(href: edit_artwork_path(artwork), appearance: :plain) {
                render Components::WebAwesome::WaIcon.new(name: "pen", variant: :regular, label: "Edit artwork")
              }

              button_to artwork, method: :delete, data: { turbo_confirm: "Are you sure?" } do
                render Components::WebAwesome::WaButton.new(appearance: :plain) {
                  render Components::WebAwesome::WaIcon.new(name: "trash", variant: :regular, label: "Destroy artwork")
                }
              end
            }
          }
        }
      }
    }
  end
end
