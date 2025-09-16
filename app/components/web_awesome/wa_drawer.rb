module Components
  module WebAwesome
    class WaDrawer < Phlex::HTML
      register_element :wa_drawer

      def initialize(
        label: "",
        light_dismiss: true,
        open: false,
        placement: "end",
        without_header: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        label: label,
          light_dismiss: light_dismiss,
          open: open,
          placement: placement,
          without_header: without_header
        })
      end

      def view_template(&)
        wa_drawer(**@attributes, &)
      end
    end
  end
end
