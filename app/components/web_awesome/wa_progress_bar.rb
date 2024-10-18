module Components
  module WebAwesome
    class WaProgressBar < Phlex::HTML
      register_element :wa_progress_bar

      def initialize(
        indeterminate: false,
        label: "",
        value: 0,
        **attributes
      )
        @attributes = attributes.with_defaults({
          indeterminate: indeterminate,
          label: label,
          value: value
        })
      end

      def view_template(&)
        wa_progress_bar(**@attributes, &)
      end
    end
  end
end
