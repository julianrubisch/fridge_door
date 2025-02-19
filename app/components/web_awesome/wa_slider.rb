module Components
  module WebAwesome
    class WaSlider < Phlex::HTML
      register_element :wa_slider

      def initialize(
        disabled: false,
        form: nil,
        hint: "",
        label: "",
        max: 100,
        min: 0,
        name: "",
        step: 1,
        title: "",
        tooltip: "top",
        value: nil,
        with_hint: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        disabled: disabled,
          form: form,
          hint: hint,
          label: label,
          max: max,
          min: min,
          name: name,
          step: step,
          title: title,
          tooltip: tooltip,
          value: value,
          with_hint: with_hint,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_slider(**@attributes, &)
      end
    end
  end
end
