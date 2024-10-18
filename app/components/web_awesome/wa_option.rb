module Components
  module WebAwesome
    class WaOption < Phlex::HTML
      register_element :wa_option

      def initialize(
        disabled: false,
        value: "",
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          value: value
        })
      end

      def view_template(&)
        wa_option(**@attributes, &)
      end
    end
  end
end
