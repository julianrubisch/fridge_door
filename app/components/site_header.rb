# frozen_string_literal: true

class Components::SiteHeader < Components::Base
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    nav(class: "level p-4") {
      ul(class: "level-left") {
        li(class: "level-item mr-4") {
          h1(class: "is-size-4") { "Weisslich" }
        }
        li(class: "level-item") {
          # add main nav here
        }
      }
      div(class: "level-right") {
        render WebAwesome::WaDropdown.new(placement: "bottom-start", data: {
                                            controller: "radio-dropdown",
                                            action: "dark-mode:change@document->radio-dropdown#updateSelection",
                                            radio_dropdown_key_value: "colorScheme" }) do |dropdown|
                      render WebAwesome::WaButton.new(slot: :trigger, appearance: :tinted, size: :small, pill: true, caret: true) do |button|
                        render WebAwesome::WaIcon.new(slot: "prefix", name: "sun", variant: "solid", class: "only-light")
                        render WebAwesome::WaIcon.new(slot: "prefix", name: "moon", variant: "solid", class: "only-dark")
                        span(class: "only-light") { "Light" }
                        span(class: "only-dark") { "Dark" }
                      end

                      render WebAwesome::WaMenu.new(data: { action: "wa-select->dark-mode#toggle" }) do
                        render WebAwesome::WaMenuItem.new(value: :light, type: :checkbox) { "Light" }
                        render WebAwesome::WaMenuItem.new(value: :dark, type: :checkbox) { "Dark" }
                        render WebAwesome::WaDivider.new
                        render WebAwesome::WaMenuItem.new(value: :auto, type: :checkbox) { "System" }
                      end
        end
      }
    }
  end
end
