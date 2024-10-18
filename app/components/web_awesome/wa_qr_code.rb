module Components
  module WebAwesome
    class WaQrCode < Phlex::HTML
      register_element :wa_qr_code

      def initialize(
        background: "white",
        error_correction: "H",
        fill: "black",
        label: "",
        radius: 0,
        size: 128,
        value: "",
        **attributes
      )
        @attributes = attributes.with_defaults({
          background: background,
          error_correction: error_correction,
          fill: fill,
          label: label,
          radius: radius,
          size: size,
          value: value
        })
      end

      def view_template(&)
        wa_qr_code(**@attributes, &)
      end
    end
  end
end
