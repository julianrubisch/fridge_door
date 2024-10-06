module Components
  module WebAwesome
    class WaDivider < Phlex::HTML
      register_element :wa_divider

      def initialize(
        vertical: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          vertical: vertical
        })
      end

      def view_template(&)
        wa_divider(**@attributes, &)
      end
    end
  end
end
