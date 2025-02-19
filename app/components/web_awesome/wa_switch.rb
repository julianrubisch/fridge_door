module Components
  module WebAwesome
    class WaSwitch < Phlex::HTML
      register_element :wa_switch

      def initialize(
        checked: nil,
        disabled: false,
        form: nil,
        hint: "",
        name: nil,
        required: false,
        size: "inherit",
        title: "",
        value: nil,
        with_hint: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          checked: checked,
          disabled: disabled,
          form: form,
          hint: hint,
          name: name,
          required: required,
          size: size,
          title: title,
          value: value,
          with_hint: with_hint
        })
      end

      def view_template(&)
        wa_switch(**@attributes, &)
      end
    end
  end
end
