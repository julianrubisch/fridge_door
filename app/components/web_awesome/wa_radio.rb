module Components
  module WebAwesome
    class WaRadio < Phlex::HTML
      register_element :wa_radio

      def initialize(
        appearance: "default",
        disabled: false,
        form: nil,
        size: "medium",
        value: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
        appearance: appearance,
          disabled: disabled,
          form: form,
          size: size,
          value: value
        })
      end

      def view_template(&)
        wa_radio(**@attributes, &)
      end
    end
  end
end
