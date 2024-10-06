module Components
  module WebAwesome
    class WaPopup < Phlex::HTML
      register_element :wa_popup

      def initialize(
        active: false,
        anchor: nil,
        arrow: false,
        arrow_padding: 10,
        arrow_placement: "anchor",
        autoSizeBoundary: nil,
        auto_size: nil,
        auto_size_padding: 0,
        distance: 0,
        flip: false,
        flipBoundary: nil,
        flip_fallback_placements: "",
        flip_fallback_strategy: "best-fit",
        flip_padding: 0,
        hover_bridge: false,
        placement: "top",
        shift: false,
        shiftBoundary: nil,
        shift_padding: 0,
        skidding: 0,
        strategy: "absolute",
        sync: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          active: active,
          anchor: anchor,
          arrow: arrow,
          arrow_padding: arrow_padding,
          arrow_placement: arrow_placement,
          autoSizeBoundary: autoSizeBoundary,
          auto_size: auto_size,
          auto_size_padding: auto_size_padding,
          distance: distance,
          flip: flip,
          flipBoundary: flipBoundary,
          flip_fallback_placements: flip_fallback_placements,
          flip_fallback_strategy: flip_fallback_strategy,
          flip_padding: flip_padding,
          hover_bridge: hover_bridge,
          placement: placement,
          shift: shift,
          shiftBoundary: shiftBoundary,
          shift_padding: shift_padding,
          skidding: skidding,
          strategy: strategy,
          sync: sync
        })
      end

      def view_template(&)
        wa_popup(**@attributes, &)
      end
    end
  end
end
