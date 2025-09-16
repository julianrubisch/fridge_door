module Components
  module WebAwesome
    class WaIcon < Phlex::HTML
      register_element :wa_icon

      def initialize(
        auto_width: nil,
        family: nil,
        label: "",
        library: "default",
        name: nil,
        src: nil,
        swap_opacity: false,
        variant: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
        auto_width: auto_width,
          family: family,
          label: label,
          library: library,
          name: name,
          src: src,
          swap_opacity: swap_opacity,
          variant: variant
        })
      end

      def view_template(&)
        wa_icon(**@attributes, &)
      end
    end
  end
end
