module Components
  module WebAwesome
    class WaRadioGroup < Phlex::HTML
      register_element :wa_radio_group

      def initialize(
        hint: "",
        label: "",
        name: nil,
        required: false,
        size: "medium",
        value: nil,
        with_hint: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          hint: hint,
          label: label,
          name: name,
          required: required,
          size: size,
          value: value,
          with_hint: with_hint,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_radio_group(**@attributes, &)
      end
    end
  end
end
