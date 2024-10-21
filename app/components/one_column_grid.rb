# frozen_string_literal: true

class Components::OneColumnGrid < Components::Base
  def initialize(id:)
    @id = id
  end

  def view_template(&)
    div(id: @id, class: "fixed-grid has-1-cols") {
      div(class: "grid", &)
    }
  end
end
