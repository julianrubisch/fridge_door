module Components
  module WebAwesome
    class WaDetails < Phlex::HTML
      register_element :wa_details

      def initialize(
        disabled: false,
        open: false,
        summary: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
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
