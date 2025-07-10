module Components
  module WebAwesome
    class WaTag < Phlex::HTML
      register_element :wa_tag

      def initialize(
        appearance: "outlined filled",
        pill: false,
        size: "medium",
        variant: "neutral",
        with_remove: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        appearance: appearance,
          pill: pill,
          size: size,
          variant: variant,
          with_remove: with_remove
        })
      end

      def view_template(&)
        wa_tag(**@attributes, &)
      end
    end
  end
end
