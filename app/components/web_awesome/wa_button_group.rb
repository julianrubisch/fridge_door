module Components
  module WebAwesome
    class WaButtonGroup < Phlex::HTML
      register_element :wa_button_group

      def initialize(
        label: "",
        orientation: "horizontal",
        variant: "neutral",
        **attributes
      )
        @attributes = attributes.with_defaults({
        label: label,
          orientation: orientation,
          variant: variant
        })
      end

      def view_template(&)
        wa_button_group(**@attributes, &)
      end
    end
  end
end
