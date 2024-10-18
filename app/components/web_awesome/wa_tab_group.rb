module Components
  module WebAwesome
    class WaTabGroup < Phlex::HTML
      register_element :wa_tab_group

      def initialize(
        activation: "auto",
        active: "",
        no_scroll_controls: false,
        placement: "top",
        **attributes
      )
        @attributes = attributes.with_defaults({
          activation: activation,
          active: active,
          no_scroll_controls: no_scroll_controls,
          placement: placement
        })
      end

      def view_template(&)
        wa_tab_group(**@attributes, &)
      end
    end
  end
end
