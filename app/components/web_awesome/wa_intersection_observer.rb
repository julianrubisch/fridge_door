module Components
  module WebAwesome
    class WaIntersectionObserver < Phlex::HTML
      register_element :wa_intersection_observer

      def initialize(
        disabled: false,
        intersect_class: "",
        once: false,
        root: nil,
        root_margin: "0px",
        threshold: "0",
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          intersect_class: intersect_class,
          once: once,
          root: root,
          root_margin: root_margin,
          threshold: threshold
        })
      end

      def view_template(&)
        wa_intersection_observer(**@attributes, &)
      end
    end
  end
end
