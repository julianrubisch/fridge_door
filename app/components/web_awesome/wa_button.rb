module Components
  module WebAwesome
    class WaButton < Phlex::HTML
      register_element :wa_button

      def initialize(
        appearance: "accent",
        disabled: false,
        download: nil,
        form: nil,
        formaction: nil,
        formenctype: nil,
        formmethod: nil,
        formnovalidate: nil,
        formtarget: nil,
        href: nil,
        loading: false,
        name: nil,
        pill: false,
        rel: nil,
        size: "medium",
        target: nil,
        title: "",
        type: "button",
        value: nil,
        variant: "neutral",
        with_caret: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
        appearance: appearance,
          disabled: disabled,
          download: download,
          form: form,
          formaction: formaction,
          formenctype: formenctype,
          formmethod: formmethod,
          formnovalidate: formnovalidate,
          formtarget: formtarget,
          href: href,
          loading: loading,
          name: name,
          pill: pill,
          rel: rel,
          size: size,
          target: target,
          title: title,
          type: type,
          value: value,
          variant: variant,
          with_caret: with_caret
        })
      end

      def view_template(&)
        wa_button(**@attributes, &)
      end
    end
  end
end
