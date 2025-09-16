module Components
  module WebAwesome
    class WaDivider < Phlex::HTML
      register_element :wa_divider

      def initialize(
        orientation: "horizontal",
        **attributes
      )
        @attributes = attributes.with_defaults({
        orientation: orientation
        })
      end

      def view_template(&)
        wa_divider(**@attributes, &)
      end
    end
  end
end
