module Components
  module WebAwesome
    class WaSplitPanel < Phlex::HTML
      register_element :wa_split_panel

      def initialize(
        disabled: false,
        orientation: "horizontal",
        position: 50,
        position_in_pixels: nil,
        primary: nil,
        snap: nil,
        snap_threshold: 12,
        **attributes
      )
        @attributes = attributes.with_defaults({
        disabled: disabled,
          orientation: orientation,
          position: position,
          position_in_pixels: position_in_pixels,
          primary: primary,
          snap: snap,
          snap_threshold: snap_threshold
        })
      end

      def view_template(&)
        wa_split_panel(**@attributes, &)
      end
    end
  end
end
