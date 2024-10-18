module Components
  module WebAwesome
    class WaSwitch < Phlex::HTML
      register_element :wa_switch

      def initialize(
        checked: nil,
        disabled: false,
        form: nil,
        help_text: "",
        name: nil,
        required: false,
        size: "medium",
        title: "",
        value: nil,
        with_help_text: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          checked: checked,
          disabled: disabled,
          form: form,
          help_text: help_text,
          name: name,
          required: required,
          size: size,
          title: title,
          value: value,
          with_help_text: with_help_text
        })
      end

      def view_template(&)
        wa_switch(**@attributes, &)
      end
    end
  end
end
