module Components
  module WebAwesome
    class WaMenu < Phlex::HTML
      register_element :wa_menu

      def initialize(
        size: "inherit",
        **attributes
      )
        @attributes = attributes.with_defaults({
        size: size
        })
      end

      def view_template(&)
        wa_menu(**@attributes, &)
      end
    end
  end
end
