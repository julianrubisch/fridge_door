# frozen_string_literal: true

class Views::Artists::Index < Views::Base
  include Phlex::Rails::Helpers::Routes
  include Phlex::Rails::Helpers::ContentFor
  include Phlex::Rails::Helpers::DOMID
  include Phlex::Rails::Helpers::ButtonTo

  def initialize(artists)
    @artists = artists
  end

  def view_template
    content_for :title, "Artists"

    content_for :main_header do
      render Components::PageHeader.new do |header|
        header.title_bar { |title_bar|
          title_bar.title {
            # add title
          }

          title_bar.actions {
            render Components::WebAwesome::WaButton.new(appearance: :filled, variant: :brand, size: :small, href: new_artist_path) {
              render Components::WebAwesome::WaIcon.new(slot: "start", name: "plus", variant: "solid")
              span { "New artist" }
            }
          }
        }
      end
    end

    render Components::Grid.new(id: "artists") {
      @artists.map { |artist|
        render Components::GridCell.new(id: dom_id(artist)) {
          div {
            # add card body
          }

          div(slot: "footer", class: "wa-split wa-align-items-center") {
            render Components::WebAwesome::WaButton.new(appearance: :outlined, variant: :brand, href: artist_path(artist)) {
              "More Info"
            }

            div(class: "wa-cluster") {
              render Components::WebAwesome::WaButton.new(href: edit_artist_path(artist), appearance: :plain) {
                render Components::WebAwesome::WaIcon.new(name: "pen", variant: :regular, label: "Edit artist")
              }

              button_to artist, method: :delete, data: { turbo_confirm: "Are you sure?" } do
                render Components::WebAwesome::WaButton.new(appearance: :plain) {
                  render Components::WebAwesome::WaIcon.new(name: "trash", variant: :regular, label: "Destroy artist")
                }
              end
            }
          }
        }
      }
    }
  end
end
