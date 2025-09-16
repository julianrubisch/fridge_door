module Components
  module WebAwesome
    class WaDropdown < Phlex::HTML
      register_element :wa_dropdown

      def initialize(
        distance: 0,
        open: false,
        placement: "bottom-start",
        size: "medium",
        skidding: 0,
        **attributes
      )
        @attributes = attributes.with_defaults({
        distance: distance,
          open: open,
          placement: placement,
          size: size,
          skidding: skidding
        })
      end

      def view_template(&)
        wa_dropdown(**@attributes, &)
      end
    end
  end
end
