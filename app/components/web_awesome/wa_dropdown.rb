module Components
  module WebAwesome
    class WaDropdown < Phlex::HTML
      register_element :wa_dropdown

      def initialize(
        disabled: false,
        distance: 0,
        hoist: false,
        open: false,
        placement: "bottom-start",
        skidding: 0,
        stay_open_on_select: false,
        sync: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          distance: distance,
          hoist: hoist,
          open: open,
          placement: placement,
          skidding: skidding,
          stay_open_on_select: stay_open_on_select,
          sync: sync
        })
      end

      def view_template(&)
        wa_dropdown(**@attributes, &)
      end
    end
  end
end
