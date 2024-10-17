# frozen_string_literal: true

class Components::PageHeader < Components::Base
  def view_template(&)
    div(class: "is-flex is-justify-content-space-between is-align-items-baseline", &)

    render Components::WebAwesome::WaDivider.new
  end

  def title(&)
    h1(class: "is-size-3", &)
  end

  def actions(&)
    div(class: "is-flex", &)
  end
end
