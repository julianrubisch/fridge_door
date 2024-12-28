# frozen_string_literal: true

class Components::TitleBar < Components::Base
  def view_template(&)
    div(class: "title-bar wa-split wa-align-items-center wa-gap-m", &)
  end

  def leading_action(&)
    div(class: "is-flex mr-2", &)
  end

  def title(&)
    h1(&)
  end

  def trailing_visual(&)
    div(&)
  end

  def actions(&)
    div(class: "is-flex", &)
  end
end
