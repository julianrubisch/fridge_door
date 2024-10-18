module Components
  module WebAwesome
    class WaProgressRing < Phlex::HTML
      register_element :wa_progress_ring

      def initialize(
        label: "",
        value: 0,
        **attributes
      )
        @attributes = attributes.with_defaults({
          label: label,
          value: value
        })
      end

      def view_template(&)
        wa_progress_ring(**@attributes, &)
      end
    end
  end
end
