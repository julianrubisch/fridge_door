module Components
  module WebAwesome
    class WaVisuallyHidden < Phlex::HTML
      register_element :wa_visually_hidden

      def initialize(
        **attributes
      )
        @attributes = attributes.with_defaults({})
      end

      def view_template(&)
        wa_visually_hidden(**@attributes, &)
      end
    end
  end
end
