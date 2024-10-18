module Components
  module WebAwesome
    class WaInput < Phlex::HTML
      register_element :wa_input

      def initialize(
        autocapitalize: nil,
        autocomplete: nil,
        autocorrect: nil,
        autofocus: nil,
        clearable: false,
        enterkeyhint: nil,
        filled: false,
        form: nil,
        help_text: "",
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
        with_help_text: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          autocapitalize: autocapitalize,
          autocomplete: autocomplete,
          autocorrect: autocorrect,
          autofocus: autofocus,
          clearable: clearable,
          enterkeyhint: enterkeyhint,
          filled: filled,
          form: form,
          help_text: help_text,
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
          with_help_text: with_help_text,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_input(**@attributes, &)
      end
    end
  end
end
