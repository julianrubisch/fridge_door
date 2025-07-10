module Components
  module WebAwesome
    class WaCard < Phlex::HTML
      register_element :wa_card

      def initialize(
        appearance: "outlined",
        with_footer: false,
        with_header: false,
        with_media: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        appearance: appearance,
          with_footer: with_footer,
          with_header: with_header,
          with_media: with_media
        })
      end

      def view_template(&)
        wa_card(**@attributes, &)
      end
    end
  end
end
