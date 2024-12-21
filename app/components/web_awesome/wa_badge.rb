module Components
  module WebAwesome
    class WaBadge < Phlex::HTML
      register_element :wa_badge

      def initialize(
        appearance: "accent",
        pill: false,
        pulse: false,
        variant: "brand",
        **attributes
      )
        @attributes = attributes.with_defaults({
          appearance: appearance,
          pill: pill,
          pulse: pulse,
          variant: variant
        })
      end

      def view_template(&)
        wa_badge(**@attributes, &)
      end
    end
  end
end
