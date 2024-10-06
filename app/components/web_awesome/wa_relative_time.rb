module Components
  module WebAwesome
    class WaRelativeTime < Phlex::HTML
      register_element :wa_relative_time

      def initialize(
        date: new Date(),
        format: 'long',
        numeric: 'auto',
        sync: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          date: date,
          format: format,
          numeric: numeric,
          sync: sync
        })
      end

      def view_template(&)
        wa_relative_time(**@attributes, &)
      end
    end
  end
end
