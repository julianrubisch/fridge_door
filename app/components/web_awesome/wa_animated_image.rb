module Components
  module WebAwesome
    class WaAnimatedImage < Phlex::HTML
      register_element :wa_animated_image

      def initialize(
        alt: nil,
        play: nil,
        src: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          alt: alt,
          play: play,
          src: src
        })
      end

      def view_template(&)
        wa_animated_image(**@attributes, &)
      end
    end
  end
end
