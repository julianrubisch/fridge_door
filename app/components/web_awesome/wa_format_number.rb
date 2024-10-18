module Components
  module WebAwesome
    class WaFormatNumber < Phlex::HTML
      register_element :wa_format_number

      def initialize(
        currency: "USD",
        currency_display: "symbol",
        maximum_fraction_digits: nil,
        maximum_significant_digits: nil,
        minimum_fraction_digits: nil,
        minimum_integer_digits: nil,
        minimum_significant_digits: nil,
        no_grouping: false,
        type: "decimal",
        value: 0,
        **attributes
      )
        @attributes = attributes.with_defaults({
          currency: currency,
          currency_display: currency_display,
          maximum_fraction_digits: maximum_fraction_digits,
          maximum_significant_digits: maximum_significant_digits,
          minimum_fraction_digits: minimum_fraction_digits,
          minimum_integer_digits: minimum_integer_digits,
          minimum_significant_digits: minimum_significant_digits,
          no_grouping: no_grouping,
          type: type,
          value: value
        })
      end

      def view_template(&)
        wa_format_number(**@attributes, &)
      end
    end
  end
end
