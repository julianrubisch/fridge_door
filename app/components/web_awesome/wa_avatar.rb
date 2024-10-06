module Components
  module WebAwesome
    class WaAvatar < Phlex::HTML
      register_element :wa_avatar

      def initialize(
        image: "",
        initials: "",
        label: "",
        loading: "eager",
        shape: "circle",
        **attributes
      )
        @attributes = attributes.with_defaults({
          image: image,
          initials: initials,
          label: label,
          loading: loading,
          shape: shape
        })
      end

      def view_template(&)
        wa_avatar(**@attributes, &)
      end
    end
  end
end
