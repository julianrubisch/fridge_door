module Components
  module WebAwesome
    class WaSelect < Phlex::HTML
      register_element :wa_select

      def initialize(
        clearable: false,
        disabled: false,
        filled: false,
        form: nil,
        getTag: nil,
        help_text: "",
        hoist: false,
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
        with_help_text: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          clearable: clearable,
          disabled: disabled,
          filled: filled,
          form: form,
          getTag: getTag,
          help_text: help_text,
          hoist: hoist,
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
          with_help_text: with_help_text,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_select(**@attributes, &)
      end
    end
  end
end
