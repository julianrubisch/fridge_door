module Components
  module WebAwesome
    class WaRange < Phlex::HTML
      register_element :wa_range

      def initialize(
        disabled: false,
        form: nil,
        help_text: "",
        label: "",
        max: 100,
        min: 0,
        name: "",
        step: 1,
        title: "",
        tooltip: "top",
        value: nil,
        with_help_text: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          form: form,
          help_text: help_text,
          label: label,
          max: max,
          min: min,
          name: name,
          step: step,
          title: title,
          tooltip: tooltip,
          value: value,
          with_help_text: with_help_text,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_range(**@attributes, &)
      end
    end
  end
end
