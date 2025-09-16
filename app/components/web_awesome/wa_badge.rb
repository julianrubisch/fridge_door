module Components
  module WebAwesome
    class WaBadge < Phlex::HTML
      register_element :wa_badge

      def initialize(
        appearance: "accent",
        attention: "none",
        pill: false,
        variant: "brand",
        **attributes
      )
        @attributes = attributes.with_defaults({
        appearance: appearance,
          attention: attention,
          pill: pill,
          variant: variant
        })
      end

      def view_template(&)
        wa_badge(**@attributes, &)
      end
    end
  end
end
