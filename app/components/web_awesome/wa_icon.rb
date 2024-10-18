module Components
  module WebAwesome
    class WaIcon < Phlex::HTML
      register_element :wa_icon

      def initialize(
        family: nil,
        fixed_width: nil,
        label: "",
        library: "default",
        name: nil,
        src: nil,
        variant: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          family: family,
          fixed_width: fixed_width,
          label: label,
          library: library,
          name: name,
          src: src,
          variant: variant
        })
      end

      def view_template(&)
        wa_icon(**@attributes, &)
      end
    end
  end
end
