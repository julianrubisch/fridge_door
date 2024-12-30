# frozen_string_literal: true

class Components::TitleBar < Components::Base
  def view_template(&)
    div(class: "title-bar wa-flank wa-align-items-center wa-gap-m", &)
  end

  def leading_action(&)
    div(class: "is-flex", &)
  end

  def title(&)
    h1(&)
  end

  def trailing_visual(&)
    div(&)
  end

  def actions(&)
    div(class: "wa-flank:end") {
      div # note: this is to make flex-grow work properly
      div(class: "wa-cluster wa-gap-0", &)
    }
  end
end
