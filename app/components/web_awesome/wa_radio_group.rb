module Components
  module WebAwesome
    class WaRadioGroup < Phlex::HTML
      register_element :wa_radio_group

      def initialize(
        help_text: "",
        label: "",
        name: nil,
        required: false,
        size: "medium",
        value: nil,
        with_help_text: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          help_text: help_text,
          label: label,
          name: name,
          required: required,
          size: size,
          value: value,
          with_help_text: with_help_text,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_radio_group(**@attributes, &)
      end
    end
  end
end
