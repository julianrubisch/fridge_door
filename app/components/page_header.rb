# frozen_string_literal: true

class Components::PageHeader < Components::Base
  def view_template(&)
    header(class: "is-flex is-justify-content-space-between is-align-items-baseline", &)

    render Components::WebAwesome::WaDivider.new
  end

  def title_bar(&)
    render TitleBar.new(&)
  end

  def actions(&)
    div(class: "is-flex", &)
  end
end
