module Components
  module WebAwesome
    class WaTab < Phlex::HTML
      register_element :wa_tab

      def initialize(
        disabled: false,
        panel: "",
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          panel: panel
        })
      end

      def view_template(&)
        wa_tab(**@attributes, &)
      end
    end
  end
end
