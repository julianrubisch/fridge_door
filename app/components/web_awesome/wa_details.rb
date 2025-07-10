module Components
  module WebAwesome
    class WaDetails < Phlex::HTML
      register_element :wa_details

      def initialize(
        appearance: "outlined",
        disabled: false,
        name: nil,
        open: false,
        summary: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
        appearance: appearance,
          disabled: disabled,
          name: name,
          open: open,
          summary: summary
        })
      end

      def view_template(&)
        wa_details(**@attributes, &)
      end
    end
  end
end
