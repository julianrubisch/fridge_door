module Components
  module WebAwesome
    class WaMenuLabel < Phlex::HTML
      register_element :wa_menu_label

      def initialize(
        **attributes
      )
        @attributes = attributes.with_defaults({})
      end

      def view_template(&)
        wa_menu_label(**@attributes, &)
      end
    end
  end
end
