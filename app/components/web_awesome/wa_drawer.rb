module Components
  module WebAwesome
    class WaDrawer < Phlex::HTML
      register_element :wa_drawer

      def initialize(
        label: "",
        light_dismiss: false,
        open: false,
        placement: "end",
        with_footer: false,
        with_header: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          label: label,
          light_dismiss: light_dismiss,
          open: open,
          placement: placement,
          with_footer: with_footer,
          with_header: with_header
        })
      end

      def view_template(&)
        wa_drawer(**@attributes, &)
      end
    end
  end
end
