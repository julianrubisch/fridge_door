module Components
  module WebAwesome
    class WaRadioButton < Phlex::HTML
      register_element :wa_radio_button

      def initialize(
        disabled: false,
        form: nil,
        pill: false,
        size: "inherit",
        value: nil,
        with_label: false,
        with_prefix: false,
        with_suffix: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          form: form,
          pill: pill,
          size: size,
          value: value,
          with_label: with_label,
          with_prefix: with_prefix,
          with_suffix: with_suffix
        })
      end

      def view_template(&)
        wa_radio_button(**@attributes, &)
      end
    end
  end
end
