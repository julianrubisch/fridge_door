module Components
  module WebAwesome
    class WaSelect < Phlex::HTML
      register_element :wa_select

      def initialize(
        appearance: "outlined",
        disabled: false,
        form: nil,
        hint: "",
        label: "",
        max_options_visible: 3,
        multiple: false,
        name: "",
        open: false,
        pill: false,
        placeholder: "",
        placement: "bottom",
        required: false,
        size: "medium",
        value: nil,
        with_clear: false,
        with_hint: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        appearance: appearance,
          disabled: disabled,
          form: form,
          hint: hint,
          label: label,
          max_options_visible: max_options_visible,
          multiple: multiple,
          name: name,
          open: open,
          pill: pill,
          placeholder: placeholder,
          placement: placement,
          required: required,
          size: size,
          value: value,
          with_clear: with_clear,
          with_hint: with_hint,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_select(**@attributes, &)
      end
    end
  end
end
