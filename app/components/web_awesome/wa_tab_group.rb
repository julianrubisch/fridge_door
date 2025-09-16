module Components
  module WebAwesome
    class WaTabGroup < Phlex::HTML
      register_element :wa_tab_group

      def initialize(
        activation: "auto",
        active: "",
        placement: "top",
        without_scroll_controls: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        activation: activation,
          active: active,
          placement: placement,
          without_scroll_controls: without_scroll_controls
        })
      end

      def view_template(&)
        wa_tab_group(**@attributes, &)
      end
    end
  end
end
