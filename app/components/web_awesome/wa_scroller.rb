module Components
  module WebAwesome
    class WaScroller < Phlex::HTML
      register_element :wa_scroller

      def initialize(
        orientation: "horizontal",
        without_scrollbar: false,
        without_shadow: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        orientation: orientation,
          without_scrollbar: without_scrollbar,
          without_shadow: without_shadow
        })
      end

      def view_template(&)
        wa_scroller(**@attributes, &)
      end
    end
  end
end
