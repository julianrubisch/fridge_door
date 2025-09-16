module Components
  module WebAwesome
    class WaTree < Phlex::HTML
      register_element :wa_tree

      def initialize(
        selection: "single",
        **attributes
      )
        @attributes = attributes.with_defaults({
          selection: selection
        })
      end

      def view_template(&)
        wa_tree(**@attributes, &)
      end
    end
  end
end
