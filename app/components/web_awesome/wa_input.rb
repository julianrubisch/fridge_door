module Components
  module WebAwesome
    class WaInput < Phlex::HTML
      register_element :wa_input

      def initialize(
        appearance: "outlined",
        autocapitalize: nil,
        autocomplete: nil,
        autocorrect: nil,
        autofocus: nil,
        enterkeyhint: nil,
        form: nil,
        hint: "",
        inputmode: nil,
        label: "",
        max: nil,
        maxlength: nil,
        min: nil,
        minlength: nil,
        password_toggle: false,
        password_visible: false,
        pattern: nil,
        pill: false,
        placeholder: "",
        readonly: false,
        required: false,
        size: "medium",
        spellcheck: true,
        step: nil,
        title: "",
        type: "text",
        value: nil,
        with_clear: false,
        with_hint: false,
        with_label: false,
        without_spin_buttons: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        appearance: appearance,
          autocapitalize: autocapitalize,
          autocomplete: autocomplete,
          autocorrect: autocorrect,
          autofocus: autofocus,
          enterkeyhint: enterkeyhint,
          form: form,
          hint: hint,
          inputmode: inputmode,
          label: label,
          max: max,
          maxlength: maxlength,
          min: min,
          minlength: minlength,
          password_toggle: password_toggle,
          password_visible: password_visible,
          pattern: pattern,
          pill: pill,
          placeholder: placeholder,
          readonly: readonly,
          required: required,
          size: size,
          spellcheck: spellcheck,
          step: step,
          title: title,
          type: type,
          value: value,
          with_clear: with_clear,
          with_hint: with_hint,
          with_label: with_label,
          without_spin_buttons: without_spin_buttons
        })
      end

      def view_template(&)
        wa_input(**@attributes, &)
      end
    end
  end
end
