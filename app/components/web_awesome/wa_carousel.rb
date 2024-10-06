module Components
  module WebAwesome
    class WaCarousel < Phlex::HTML
      register_element :wa_carousel

      def initialize(
        autoplay: false,
        autoplay_interval: 3000,
        currentSlide: 0,
        loop: false,
        mouse_dragging: false,
        navigation: false,
        orientation: "horizontal",
        pagination: false,
        slides: 0,
        slides_per_move: 1,
        slides_per_page: 1,
        **attributes
      )
        @attributes = attributes.with_defaults({
          autoplay: autoplay,
          autoplay_interval: autoplay_interval,
          currentSlide: currentSlide,
          loop: loop,
          mouse_dragging: mouse_dragging,
          navigation: navigation,
          orientation: orientation,
          pagination: pagination,
          slides: slides,
          slides_per_move: slides_per_move,
          slides_per_page: slides_per_page
        })
      end

      def view_template(&)
        wa_carousel(**@attributes, &)
      end
    end
  end
end
