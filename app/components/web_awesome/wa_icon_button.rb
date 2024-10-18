module Components
  module WebAwesome
    class WaIconButton < Phlex::HTML
      register_element :wa_icon_button

      def initialize(
        disabled: false,
        download: nil,
        family: nil,
        href: nil,
        label: "",
        library: nil,
        name: nil,
        src: nil,
        target: nil,
        variant: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          download: download,
          family: family,
          href: href,
          label: label,
          library: library,
          name: name,
          src: src,
          target: target,
          variant: variant
        })
      end

      def view_template(&)
        wa_icon_button(**@attributes, &)
      end
    end
  end
end
