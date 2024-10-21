# frozen_string_literal: true

class Components::PageHeader < Components::Base
  def view_template(&)
    header(class: "is-flex is-flex-direction-column", &)

    render Components::WebAwesome::WaDivider.new
  end

  def title_bar(&)
    render TitleBar.new(&)
  end

  def description(&)
    div(class: "has-text-grey", &)
  end
end
