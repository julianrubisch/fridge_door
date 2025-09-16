module Components
  module WebAwesome
    class WaTabPanel < Phlex::HTML
      register_element :wa_tab_panel

      def initialize(
        active: false,
        name: "",
        **attributes
      )
        @attributes = attributes.with_defaults({
          active: active,
          name: name
        })
      end

      def view_template(&)
        wa_tab_panel(**@attributes, &)
      end
    end
  end
end
