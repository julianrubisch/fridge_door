# frozen_string_literal: true

class Components::TitleBar < Components::Base
  def view_template(&)
    div(class: "is-flex is-justify-content-space-between is-align-items-center", &)
  end

  def leading_action(&)
    div(class: "is-flex mr-2", &)
  end

  def title(&)
    h1(class: "is-size-3-desktop is-size-5-mobile is-size-4-tablet", &)
  end

  def actions(&)
    div(class: "is-flex", &)
  end
end
