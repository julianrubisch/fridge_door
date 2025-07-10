module Components
  module WebAwesome
    class WaZoomableFrame < Phlex::HTML
      register_element :wa_zoomable_frame

      def initialize(
        allowfullscreen: false,
        loading: "eager",
        referrerpolicy: nil,
        sandbox: nil,
        src: nil,
        srcdoc: nil,
        without_controls: false,
        without_interaction: false,
        zoom: 1,
        zoom_levels: "25% 50% 75% 100% 125% 150% 175% 200%",
        **attributes
      )
        @attributes = attributes.with_defaults({
        allowfullscreen: allowfullscreen,
          loading: loading,
          referrerpolicy: referrerpolicy,
          sandbox: sandbox,
          src: src,
          srcdoc: srcdoc,
          without_controls: without_controls,
          without_interaction: without_interaction,
          zoom: zoom,
          zoom_levels: zoom_levels
        })
      end

      def view_template(&)
        wa_zoomable_frame(**@attributes, &)
      end
    end
  end
end
