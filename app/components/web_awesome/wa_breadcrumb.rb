module Components
  module WebAwesome
    class WaBreadcrumb < Phlex::HTML
      register_element :wa_breadcrumb

      def initialize(
        label: "",
        **attributes
      )
        @attributes = attributes.with_defaults({
          label: label
        })
      end

      def view_template(&)
        wa_breadcrumb(**@attributes, &)
      end
    end
  end
end
