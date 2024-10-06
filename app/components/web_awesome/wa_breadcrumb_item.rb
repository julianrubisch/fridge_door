module Components
  module WebAwesome
    class WaBreadcrumbItem < Phlex::HTML
      register_element :wa_breadcrumb_item

      def initialize(
        href: nil,
        rel: "noreferrer noopener",
        target: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          href: href,
          rel: rel,
          target: target
        })
      end

      def view_template(&)
        wa_breadcrumb_item(**@attributes, &)
      end
    end
  end
end
