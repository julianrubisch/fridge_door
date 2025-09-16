module Components
  module WebAwesome
    class WaOption < Phlex::HTML
      register_element :wa_option

      def initialize(
        disabled: false,
        label: nil,
        selected: false,
        value: "",
        **attributes
      )
        @attributes = attributes.with_defaults({
        disabled: disabled,
          label: label,
          selected: selected,
          value: value
        })
      end

      def view_template(&)
        wa_option(**@attributes, &)
      end
    end
  end
end
