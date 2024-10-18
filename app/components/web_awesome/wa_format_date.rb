module Components
  module WebAwesome
    class WaFormatDate < Phlex::HTML
      register_element :wa_format_date

      def initialize(
        date: Date.current,
        day: nil,
        era: nil,
        hour: nil,
        hour_format: "auto",
        minute: nil,
        month: nil,
        second: nil,
        time_zone: nil,
        time_zone_name: nil,
        weekday: nil,
        year: nil,
        **attributes
      )
        @attributes = attributes.with_defaults({
          date: date,
          day: day,
          era: era,
          hour: hour,
          hour_format: hour_format,
          minute: minute,
          month: month,
          second: second,
          time_zone: time_zone,
          time_zone_name: time_zone_name,
          weekday: weekday,
          year: year
        })
      end

      def view_template(&)
        wa_format_date(**@attributes, &)
      end
    end
  end
end
