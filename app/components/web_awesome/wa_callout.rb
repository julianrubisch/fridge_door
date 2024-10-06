module Components
  module WebAwesome
    class WaCallout < Phlex::HTML
      register_element :wa_callout

      def initialize(
        variant: "brand",
        **attributes
      )
        @attributes = attributes.with_defaults({
          variant: variant
        })
      end

      def view_template(&)
        wa_callout(**@attributes, &)
      end
    end
  end
end
