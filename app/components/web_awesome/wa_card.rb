module Components
  module WebAwesome
    class WaCard < Phlex::HTML
      register_element :wa_card

      def initialize(
        with_footer: false,
        with_header: false,
        with_image: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          with_footer: with_footer,
          with_header: with_header,
          with_image: with_image
        })
      end

      def view_template(&)
        wa_card(**@attributes, &)
      end
    end
  end
end
