module Components
  module WebAwesome
    class WaButtonGroup < Phlex::HTML
      register_element :wa_button_group

      def initialize(
        label: "",
        **attributes
      )
        @attributes = attributes.with_defaults({
          label: label
        })
      end

      def view_template(&)
        wa_button_group(**@attributes, &)
      end
    end
  end
end
