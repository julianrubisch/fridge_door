module Components
  module WebAwesome
    class WaDialog < Phlex::HTML
      register_element :wa_dialog

      def initialize(
        label: "",
        light_dismiss: false,
        open: false,
        with_footer: false,
        with_header: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          label: label,
          light_dismiss: light_dismiss,
          open: open,
          with_footer: with_footer,
          with_header: with_header
        })
      end

      def view_template(&)
        wa_dialog(**@attributes, &)
      end
    end
  end
end
