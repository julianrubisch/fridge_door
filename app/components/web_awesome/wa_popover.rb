module Components
  module WebAwesome
    class WaPopover < Phlex::HTML
      register_element :wa_popover

      def initialize(
        distance: 8,
        for: nil,
        open: false,
        placement: 'top',
        skidding: 0,
        without_arrow: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        distance: distance,
          for:,
          open: open,
          placement: placement,
          skidding: skidding,
          without_arrow: without_arrow
        })
      end

      def view_template(&)
        wa_popover(**@attributes, &)
      end
    end
  end
end
