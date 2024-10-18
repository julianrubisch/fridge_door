module Components
  module WebAwesome
    class WaMutationObserver < Phlex::HTML
      register_element :wa_mutation_observer

      def initialize(
        attr: nil,
        attr_old_value: false,
        char_data: false,
        char_data_old_value: false,
        child_list: false,
        disabled: false,
        **attributes
      )
        @attributes = attributes.with_defaults({
          attr: attr,
          attr_old_value: attr_old_value,
          char_data: char_data,
          char_data_old_value: char_data_old_value,
          child_list: child_list,
          disabled: disabled
        })
      end

      def view_template(&)
        wa_mutation_observer(**@attributes, &)
      end
    end
  end
end
