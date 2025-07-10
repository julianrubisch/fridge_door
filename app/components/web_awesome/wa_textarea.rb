module Components
  module WebAwesome
    class WaTextarea < Phlex::HTML
      register_element :wa_textarea

      def initialize(
        appearance: "outlined",
        autocapitalize: nil,
        autocomplete: nil,
        autocorrect: nil,
        autofocus: nil,
        disabled: false,
        enterkeyhint: nil,
        form: nil,
        hint: "",
        inputmode: nil,
        label: "",
        maxlength: nil,
        minlength: nil,
        name: nil,
        placeholder: "",
        readonly: false,
        required: false,
        resize: "vertical",
        rows: 4,
        size: "medium",
        spellcheck: true,
        title: "",
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
          disabled: disabled,
          enterkeyhint: enterkeyhint,
          form: form,
          hint: hint,
          inputmode: inputmode,
          label: label,
          maxlength: maxlength,
          minlength: minlength,
          name: name,
          placeholder: placeholder,
          readonly: readonly,
          required: required,
          resize: resize,
          rows: rows,
          size: size,
          spellcheck: spellcheck,
          title: title,
          value: value,
          with_hint: with_hint,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_textarea(**@attributes, &)
      end
    end
  end
end
