module Components
  module WebAwesome
    class WaInclude < Phlex::HTML
      register_element :wa_include

      def initialize(
        allow_scripts: false,
        mode: "cors",
        src: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          allow_scripts: allow_scripts,
          mode: mode,
          src: src
        })
      end

      def view_template(&)
        wa_include(**@attributes, &)
      end
    end
  end
end
