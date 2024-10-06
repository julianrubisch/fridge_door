module Components
  module WebAwesome
    class WaMenuItem < Phlex::HTML
      register_element :wa_menu_item

      def initialize(
        checked: false,
        disabled: false,
        loading: false,
        type: "normal",
        value: "",
        with_submenu: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          checked: checked,
          disabled: disabled,
          loading: loading,
          type: type,
          value: value,
          with_submenu: with_submenu
        })
      end

      def view_template(&)
        wa_menu_item(**@attributes, &)
      end
    end
  end
end
