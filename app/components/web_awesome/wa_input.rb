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
        clearable: false,
        enterkeyhint: nil,
        form: nil,
        hint: "",
        inputmode: nil,
        label: "",
        max: nil,
        maxlength: nil,
        min: nil,
        minlength: nil,
        no_spin_buttons: false,
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
        with_hint: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          appearance: appearance,
          autocapitalize: autocapitalize,
          autocomplete: autocomplete,
          autocorrect: autocorrect,
          autofocus: autofocus,
          clearable: clearable,
          enterkeyhint: enterkeyhint,
          form: form,
          hint: hint,
          inputmode: inputmode,
          label: label,
          max: max,
          maxlength: maxlength,
          min: min,
          minlength: minlength,
          no_spin_buttons: no_spin_buttons,
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
          with_hint: with_hint,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_input(**@attributes, &)
      end
    end
  end
end
