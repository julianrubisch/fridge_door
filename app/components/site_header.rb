# frozen_string_literal: true

class Components::SiteHeader < Components::Base
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    nav(class: "wa-split is-mobile") {
      ul(class: "wa-flank wa-gap-m") {
        li {
          h1(class: "wa-heading-l is-flex wa-align-items-center") { Rails.application.name }
        }
        li(class: "is-hidden-touch") {
          # add main nav here
        }
      }
      div(class: "wa-cluster wa-gap-xs") {
        render WebAwesome::WaDropdown.new(placement: "bottom-start", class: "is-hidden-mobile", data: {
                                            controller: "radio-dropdown",
                                            action: "wa-select->dark-mode#toggle dark-mode:change@document->radio-dropdown#updateSelection",
                                            radio_dropdown_key_value: "colorScheme" }) do |dropdown|
          render WebAwesome::WaButton.new(slot: :trigger, appearance: :filled, size: :small, pill: true, caret: true) do |button|
            render WebAwesome::WaIcon.new(slot: "start", name: "sun", variant: "solid", class: "only-light")
            render WebAwesome::WaIcon.new(slot: "start", name: "moon", variant: "solid", class: "only-dark")
            span(class: "only-light") { "Light" }
            span(class: "only-dark") { "Dark" }
          end

          render WebAwesome::WaDropdownItem.new(value: :light, type: :checkbox) { "Light" }
          render WebAwesome::WaDropdownItem.new(value: :dark, type: :checkbox) { "Dark" }
          render WebAwesome::WaDivider.new
          render WebAwesome::WaDropdownItem.new(value: :auto, type: :checkbox) { "System" }
        end

        render WebAwesome::WaDropdown.new(placement: "bottom-start") do |dropdown|
          render WebAwesome::WaButton.new(slot: :trigger, appearance: "plain") {
            render WebAwesome::WaIcon.new(name: "bars")
          }

          # render WebAwesome::WaDropdownItem.new do
          #   Current.user.email
          # end
          render WebAwesome::WaDivider.new
          # render WebAwesome::WaDropdownItem.new do
          # render WebAwesome::WaIcon.new(slot: "start", name: "right-from-bracket", variant: "solid")

          # link_to "Log out", Current.session, data: { turbo_method: :delete }
          # end
        end
      }
    }
  end
end
