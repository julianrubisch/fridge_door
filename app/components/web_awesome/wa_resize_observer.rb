module Components
  module WebAwesome
    class WaResizeObserver < Phlex::HTML
      register_element :wa_resize_observer

      def initialize(
        disabled: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled
        })
      end

      def view_template(&)
        wa_resize_observer(**@attributes, &)
      end
    end
  end
end
