module Components
  module WebAwesome
    class WaRating < Phlex::HTML
      register_element :wa_rating

      def initialize(
        disabled: false,
        getSymbol: nil,
        label: "",
        max: 5,
        precision: 1,
        readonly: false,
        size: "inherit",
        value: 0,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          getSymbol: getSymbol,
          label: label,
          max: max,
          precision: precision,
          readonly: readonly,
          size: size,
          value: value
        })
      end

      def view_template(&)
        wa_rating(**@attributes, &)
      end
    end
  end
end
