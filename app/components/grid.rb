# frozen_string_literal: true

class Components::Grid < Components::Base
  def initialize(id:)
    @id = id
  end

  def view_template(&)
    div(id: @id, class: "fixed-grid has-1-cols-mobile has-2-cols-tablet has-3-cols-desktop has-4-cols-widescreen") {
      div(class: "grid", &)
    }
  end
end
