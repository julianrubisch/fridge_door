module Components
  module WebAwesome
    class WaPage < Phlex::HTML
      register_element :wa_page

      def initialize(
        mobile_breakpoint: 768,
        nav_open: false,
        navigation_placement: "start",
        view: "desktop",
        **attributes
      )
        @attributes = attributes.with_defaults({
          mobile_breakpoint: mobile_breakpoint,
          nav_open: nav_open,
          navigation_placement: navigation_placement,
          view: view
        })
      end

      def view_template(&)
        wa_page(**@attributes, &)
      end
    end
  end
end
