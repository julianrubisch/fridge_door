# frozen_string_literal: true

class Components::TitleBar < Components::Base
  def view_template(&)
    div(class: "is-flex is-align-items-center", &)
  end

  def leading_action(&)
    div(class: "is-flex mr-2", &)
  end

  def title(&)
    h1(class: "is-size-3", &)
  end
end
