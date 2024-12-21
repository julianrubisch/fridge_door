module Components
  module WebAwesome
    class WaCheckbox < Phlex::HTML
      register_element :wa_checkbox

      def initialize(
        checked: nil,
        disabled: false,
        form: nil,
        hint: "",
        indeterminate: false,
        name: "",
        required: false,
        size: "medium",
        title: "",
        value: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          checked: checked,
          disabled: disabled,
          form: form,
          hint: hint,
          indeterminate: indeterminate,
          name: name,
          required: required,
          size: size,
          title: title,
          value: value
        })
      end

      def view_template(&)
        wa_checkbox(**@attributes, &)
      end
    end
  end
end
