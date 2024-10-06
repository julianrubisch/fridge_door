module Components
  module WebAwesome
    class WaTextarea < Phlex::HTML
      register_element :wa_textarea

      def initialize(
        autocapitalize: nil,
        autocomplete: nil,
        autocorrect: nil,
        autofocus: nil,
        disabled: false,
        enterkeyhint: nil,
        filled: false,
        form: nil,
        help_text: "",
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
        with_help_text: false,
        with_label: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          autocapitalize: autocapitalize,
          autocomplete: autocomplete,
          autocorrect: autocorrect,
          autofocus: autofocus,
          disabled: disabled,
          enterkeyhint: enterkeyhint,
          filled: filled,
          form: form,
          help_text: help_text,
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
          with_help_text: with_help_text,
          with_label: with_label
        })
      end

      def view_template(&)
        wa_textarea(**@attributes, &)
      end
    end
  end
end
