module Components
  module WebAwesome
    class WaColorPicker < Phlex::HTML
      register_element :wa_color_picker

      def initialize(
        disabled: false,
        form: nil,
        format: "hex",
        help_text: "",
        hoist: false,
        label: "",
        name: nil,
        no_format_toggle: false,
        opacity: false,
        required: false,
        size: "medium",
        swatches: "",
        uppercase: false,
        value: nil,
        with_help_text: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          form: form,
          format: format,
          help_text: help_text,
          hoist: hoist,
          label: label,
          name: name,
          no_format_toggle: no_format_toggle,
          opacity: opacity,
          required: required,
          size: size,
          swatches: swatches,
          uppercase: uppercase,
          value: value,
          with_help_text: with_help_text,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_color_picker(**@attributes, &)
      end
    end
  end
end
