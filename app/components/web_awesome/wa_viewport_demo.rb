module Components
  module WebAwesome
    class WaViewportDemo < Phlex::HTML
      register_element :wa_viewport_demo

      def initialize(
        viewport: nil,
        zoom: 1,
        **attributes
      )
        @attributes = attributes.with_defaults({
          viewport: viewport,
          zoom: zoom
        })
      end

      def view_template(&)
        wa_viewport_demo(**@attributes, &)
      end
    end
  end
end
