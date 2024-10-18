module Components
  module WebAwesome
    class WaSkeleton < Phlex::HTML
      register_element :wa_skeleton

      def initialize(
        effect: "none",
        **attributes
      )
        @attributes = attributes.with_defaults({
          effect: effect
        })
      end

      def view_template(&)
        wa_skeleton(**@attributes, &)
      end
    end
  end
end
