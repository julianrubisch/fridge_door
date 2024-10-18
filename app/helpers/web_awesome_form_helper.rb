module WebAwesomeFormHelper
  # Custom form_for helper using WebAwesomeFormBuilder
  def wa_form_for(record, **options, &block)
    options[:builder] = WebAwesomeFormBuilder
    form_for(record, **options, &block)
  end

  # Custom form_with helper using WebAwesomeFormBuilder
  def wa_form_with(**options, &block)
    options[:builder] = WebAwesomeFormBuilder
    form_with(**options, &block)
  end
end
