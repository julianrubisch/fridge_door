module Components
  module WebAwesome
    class WaDropdownItem < Phlex::HTML
      register_element :wa_dropdown_item

      def initialize(
        checked: false,
        disabled: false,
        submenuOpen: false,
        type: "normal",
        value: nil,
        variant: "default",
        **attributes
      )
        @attributes = attributes.with_defaults({
        checked: checked,
          disabled: disabled,
          submenuOpen: submenuOpen,
          type: type,
          value: value,
          variant: variant
        })
      end

      def view_template(&)
        wa_dropdown_item(**@attributes, &)
      end
    end
  end
end
