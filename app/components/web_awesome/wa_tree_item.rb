module Components
  module WebAwesome
    class WaTreeItem < Phlex::HTML
      register_element :wa_tree_item

      def initialize(
        disabled: false,
        expanded: false,
        lazy: false,
        selected: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          disabled: disabled,
          expanded: expanded,
          lazy: lazy,
          selected: selected
        })
      end

      def view_template(&)
        wa_tree_item(**@attributes, &)
      end
    end
  end
end
