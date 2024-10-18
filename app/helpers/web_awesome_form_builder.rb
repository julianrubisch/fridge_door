class WebAwesomeFormBuilder < ActionView::Helpers::FormBuilder
  # General method to handle different input types using wa-input
  def wa_input(method, options = {})
    @template.content_tag("wa-input", nil, options.merge(name: "#{@object_name}[#{method}]", value: object&.send(method), required: attribute_required_on_model?(object, method)))
  end

  def text_field(method, options = {})
    wa_input(method, options.merge(label: method.to_s.humanize))
  end

  # Override the select method to use wa-select
  def select(method, choices = nil, options = {}, html_options = {}, &block)
    @template.content_tag("wa-select", options_for_select(choices, object.send(method)), options.merge(name: "#{@object_name}[#{method}]"))
  end

  # Override the text_area method to use wa-textarea
  def textarea(method, options = {})
    @template.content_tag("wa-textarea", nil, options.merge(name: "#{@object_name}[#{method}]", value: object.send(method), label: method.to_s.humanize, required: attribute_required_on_model?(object, method)))
  end

  # Override the check_box method to use wa-checkbox
  def check_box(method, options = {}, checked_value = "1", unchecked_value = "0")
    @template.content_tag("wa-checkbox", nil, options.merge(name: "#{@object_name}[#{method}]", checked: object.send(method) == checked_value, required: attribute_required_on_model?(object, method)))
  end

  # Override the radio_button method to use wa-radio
  def radio_button(method, tag_value, options = {})
    @template.content_tag("wa-radio", nil, options.merge(name: "#{@object_name}[#{method}]", value: tag_value, checked: object.send(method) == tag_value))
  end

  # Override the submit method to use wa-button
  def submit(value = nil, options = {})
    @template.content_tag("wa-button", value || submit_default_value, options.merge(type: "submit", variant: "brand"))
  end

  # Override the number_field method to use wa-input with type="number"
  def number_field(method, options = {})
    wa_input(method, options.merge(type: "number"))
  end

  # Override the email_field method to use wa-input with type="email"
  def email_field(method, options = {})
    wa_input(method, options.merge(type: "email"))
  end

  # Override the password_field method to use wa-input with type="password"
  def password_field(method, options = {})
    wa_input(method, options.merge(type: "password"))
  end

  # Override the date_field method to use wa-input with type="date"
  def date_field(method, options = {})
    wa_input(method, options.merge(type: "date"))
  end

  # Override the file_field method to use wa-input with type="file"
  def file_field(method, options = {})
    wa_input(method, options.merge(type: "file"))
  end

  # Add more overrides as needed...

  def attribute_required_on_model?(object, attribute)
    return unless object

    object.class.validators_on(attribute).any? { |v| v.is_a?(ActiveModel::Validations::PresenceValidator) }
  end
end
