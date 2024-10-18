module Components
  module WebAwesome
    class WaCopyButton < Phlex::HTML
      register_element :wa_copy_button

      def initialize(
        copy_label: "",
        disabled: false,
        error_label: "",
        feedback_duration: 1000,
        from: "",
        hoist: false,
        success_label: "",
        tooltip_placement: "top",
        value: "",
        **attributes
      )
        @attributes = attributes.with_defaults({
          copy_label: copy_label,
          disabled: disabled,
          error_label: error_label,
          feedback_duration: feedback_duration,
          from: from,
          hoist: hoist,
          success_label: success_label,
          tooltip_placement: tooltip_placement,
          value: value
        })
      end

      def view_template(&)
        wa_copy_button(**@attributes, &)
      end
    end
  end
end
