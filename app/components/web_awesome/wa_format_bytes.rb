module Components
  module WebAwesome
    class WaFormatBytes < Phlex::HTML
      register_element :wa_format_bytes

      def initialize(
        display: "short",
        unit: "byte",
        value: 0,
        **attributes
      )
        @attributes = attributes.with_defaults({
          display: display,
          unit: unit,
          value: value
        })
      end

      def view_template(&)
        wa_format_bytes(**@attributes, &)
      end
    end
  end
end
