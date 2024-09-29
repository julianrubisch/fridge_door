# frozen_string_literal: true

class Components::SiteHeaderComponent < Components::Base
  include Phlex::Rails::Helpers::LinkTo

  register_element :wa_dropdown
  register_element :wa_button
  register_element :wa_menu
  register_element :wa_menu_item
  register_element :wa_icon
  register_element :wa_divider

  def view_template
    nav(class: "level p-4") {
      ul(class: "level-left") {
        li(class: "level-item mr-4") {
          h1(class: "is-size-4") { "Weisslich" }
        }
        li(class: "level-item") {
          link_to "Posts", posts_path
        }
      }
      div(class: "level-right") {
        wa_dropdown(placement: "bottom-start") {
          wa_button(slot: :trigger, appearance: :tinted, size: :small, pill: true, caret: true) {
            wa_icon(slot: "prefix", name: "sun", variant: "solid")
            plain "Light"
          }
          wa_menu(data: { action: "wa-select->dark-mode#toggle" }) {
            wa_menu_item(value: :light, type: :checkbox) { "Light" }
            wa_menu_item(value: :dark, type: :checkbox) { "Dark" }
            wa_divider
            wa_menu_item(value: :auto, type: :checkbox) { "System" }
          }
        }
      }
    }
  end
end
