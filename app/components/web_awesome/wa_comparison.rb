module Components
  module WebAwesome
    class WaComparison < Phlex::HTML
      register_element :wa_comparison

      def initialize(
        position: 50,
        **attributes
      )
        @attributes = attributes.with_defaults({
        position: position
        })
      end

      def view_template(&)
        wa_comparison(**@attributes, &)
      end
    end
  end
end
