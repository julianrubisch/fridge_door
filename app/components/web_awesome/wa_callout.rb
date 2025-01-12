module Components
  module WebAwesome
    class WaCallout < Phlex::HTML
      register_element :wa_callout

      def initialize(
        appearance: "outlined filled",
        size: "medium",
        variant: "brand",
        **attributes
      )
        @attributes = attributes.with_defaults({
          appearance: appearance,
          size: size,
          variant: variant
        })
      end

      def view_template(&)
        wa_callout(**@attributes, &)
      end
    end
  end
end
