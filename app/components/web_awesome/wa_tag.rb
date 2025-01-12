module Components
  module WebAwesome
    class WaTag < Phlex::HTML
      register_element :wa_tag

      def initialize(
        appearance: "outlined filled",
        pill: false,
        removable: false,
        size: "medium",
        variant: "neutral",
        **attributes
      )
        @attributes = attributes.with_defaults({
          appearance: appearance,
          pill: pill,
          removable: removable,
          size: size,
          variant: variant
        })
      end

      def view_template(&)
        wa_tag(**@attributes, &)
      end
    end
  end
end
