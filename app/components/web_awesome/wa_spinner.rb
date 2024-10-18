module Components
  module WebAwesome
    class WaSpinner < Phlex::HTML
      register_element :wa_spinner

      def initialize(
        **attributes
      )
        @attributes = attributes.with_defaults({})
      end

      def view_template(&)
        wa_spinner(**@attributes, &)
      end
    end
  end
end
