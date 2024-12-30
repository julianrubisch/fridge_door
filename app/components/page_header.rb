# frozen_string_literal: true

class Components::PageHeader < Components::Base
  def view_template(&)
    div(class: "page-header wa-stack wa-gap-xs", &)

    render Components::WebAwesome::WaDivider.new
  end

  def title_bar(&)
    render TitleBar.new(&)
  end

  def description(&)
    div(class: "description has-text-grey wa-heading-s", &)
  end
end
