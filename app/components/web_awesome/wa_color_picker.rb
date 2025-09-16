module Components
  module WebAwesome
    class WaColorPicker < Phlex::HTML
      register_element :wa_color_picker

      def initialize(
        disabled: false,
        form: nil,
        format: "hex",
        hint: "",
        label: "",
        name: nil,
        opacity: false,
        open: false,
        required: false,
        size: "medium",
        swatches: "",
        uppercase: false,
        value: nil,
        with_hint: false,
        with_label: false,
        without_format_toggle: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        disabled: disabled,
          form: form,
          format: format,
          hint: hint,
          label: label,
          name: name,
          opacity: opacity,
          open: open,
          required: required,
          size: size,
          swatches: swatches,
          uppercase: uppercase,
          value: value,
          with_hint: with_hint,
          with_label: with_label,
          without_format_toggle: without_format_toggle
        })
      end

      def view_template(&)
        wa_color_picker(**@attributes, &)
      end
    end
  end
end
