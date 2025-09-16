module Components
  module WebAwesome
    class WaImageComparer < Phlex::HTML
      register_element :wa_image_comparer

      def initialize(
        position: 50,
        **attributes
      )
        @attributes = attributes.with_defaults({
          position: position
        })
      end

      def view_template(&)
        wa_image_comparer(**@attributes, &)
      end
    end
  end
end
