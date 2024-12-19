module Components
  module WebAwesome
    class WaTooltip < Phlex::HTML
      register_element :wa_tooltip

      def initialize(
        disabled: false,
        distance: 8,
        for: nil,
        hide_delay: 0,
        hoist: false,
        open: false,
        placement: 'top',
        show_delay: 150,
        skidding: 0,
        trigger: 'hover focus',
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          distance: distance,
          for: for,
          hide_delay: hide_delay,
          hoist: hoist,
          open: open,
          placement: placement,
          show_delay: show_delay,
          skidding: skidding,
          trigger: trigger
        })
      end

      def view_template(&)
        wa_tooltip(**@attributes, &)
      end
    end
  end
end
