module Components
  module WebAwesome
    class WaCodeDemo < Phlex::HTML
      register_element :wa_code_demo

      def initialize(
        include: nil,
        open: false,
        viewport: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          include: include,
          open: open,
          viewport: viewport
        })
      end

      def view_template(&)
        wa_code_demo(**@attributes, &)
      end
    end
  end
end
