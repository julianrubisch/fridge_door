# frozen_string_literal: true

class Components::SiteHeader < Components::Base
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    nav(class: "level p-4") {
      ul(class: "level-left") {
        li(class: "level-item mr-4") {
          h1(class: "is-size-4") { Rails.application.name }
        }
        li(class: "level-item is-hidden-touch") {
          # add main nav here
        }
      }
      div(class: "level-right") {
        render WebAwesome::WaDropdown.new(placement: "bottom-start", class: "level-item is-hidden-mobile", data: {
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

        render WebAwesome::WaDropdown.new(placement: "bottom-start", class: "level-item") do |dropdown|
          render WebAwesome::WaIconButton.new(slot: :trigger, name: "bars")

          render WebAwesome::WaMenu.new do
            # render WebAwesome::WaMenuItem.new do
            #   Current.user.email
            # end
            render WebAwesome::WaDivider.new
            # render WebAwesome::WaMenuItem.new do
            #   render WebAwesome::WaIcon.new(slot: "prefix", name: "right-from-bracket", variant: "solid")

            #   button_to "Log out", Current.session, method: :delete
            # end
          end
        end
      }
    }
  end
end
