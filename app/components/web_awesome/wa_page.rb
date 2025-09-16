module Components
  module WebAwesome
    class WaPage < Phlex::HTML
      register_element :wa_page

      def initialize(
        disable_navigation_toggle: false,
        mobile_breakpoint: "768px",
        nav_open: false,
        navigation_placement: "start",
        view: "desktop",
        **attributes
      )
        @attributes = attributes.with_defaults({
          disable_navigation_toggle: disable_navigation_toggle,
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
