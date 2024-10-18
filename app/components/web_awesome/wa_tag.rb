module Components
  module WebAwesome
    class WaTag < Phlex::HTML
      register_element :wa_tag

      def initialize(
        pill: false,
        removable: false,
        size: "medium",
        variant: "neutral",
        **attributes
      )
        @attributes = attributes.with_defaults({
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
