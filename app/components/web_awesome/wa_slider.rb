module Components
  module WebAwesome
    class WaSlider < Phlex::HTML
      register_element :wa_slider

      def initialize(
        autofocus: nil,
        disabled: false,
        form: nil,
        hint: "",
        indicator_offset: nil,
        label: "",
        max: 100,
        max_value: 50,
        min: 0,
        min_value: 0,
        name: nil,
        orientation: "horizontal",
        range: false,
        readonly: false,
        required: false,
        size: "medium",
        step: 1,
        tooltip_distance: 8,
        tooltip_placement: "top",
        value: nil,
        with_markers: false,
        with_tooltip: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        autofocus: autofocus,
          disabled: disabled,
          form: form,
          hint: hint,
          indicator_offset: indicator_offset,
          label: label,
          max: max,
          max_value: max_value,
          min: min,
          min_value: min_value,
          name: name,
          orientation: orientation,
          range: range,
          readonly: readonly,
          required: required,
          size: size,
          step: step,
          tooltip_distance: tooltip_distance,
          tooltip_placement: tooltip_placement,
          value: value,
          with_markers: with_markers,
          with_tooltip: with_tooltip
        })
      end

      def view_template(&)
        wa_slider(**@attributes, &)
      end
    end
  end
end
