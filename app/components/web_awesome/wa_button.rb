module Components
  module WebAwesome
    class WaButton < Phlex::HTML
      register_element :wa_button

      def initialize(
        appearance: "accent",
        caret: false,
        disabled: false,
        download: nil,
        form: nil,
        formaction: nil,
        formenctype: nil,
        formmethod: nil,
        formnovalidate: nil,
        formtarget: nil,
        href: "",
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
        **attributes
      )
        @attributes = attributes.with_defaults({
          appearance: appearance,
          caret: caret,
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
          variant: variant
        })
      end

      def view_template(&)
        wa_button(**@attributes, &)
      end
    end
  end
end
