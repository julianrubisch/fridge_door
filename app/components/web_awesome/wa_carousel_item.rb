module Components
  module WebAwesome
    class WaCarouselItem < Phlex::HTML
      register_element :wa_carousel_item

      def initialize(
        **attributes
      )
        @attributes = attributes.with_defaults({})
      end

      def view_template(&)
        wa_carousel_item(**@attributes, &)
      end
    end
  end
end
