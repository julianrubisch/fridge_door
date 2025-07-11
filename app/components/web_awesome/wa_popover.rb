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
        **attributes
      )
        @attributes = attributes.with_defaults({
        distance: distance,
          for:,
          open: open,
          placement: placement,
          skidding: skidding
        })
      end

      def view_template(&)
        wa_popover(**@attributes, &)
      end
    end
  end
end
