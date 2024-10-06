module Components
  module WebAwesome
    class WaMenu < Phlex::HTML
      register_element :wa_menu

      def initialize(
        **attributes
      )
        @attributes = attributes.with_defaults({})
      end

      def view_template(&)
        wa_menu(**@attributes, &)
      end
    end
  end
end
