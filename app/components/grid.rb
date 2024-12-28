# frozen_string_literal: true

class Components::Grid < Components::Base
  def initialize(id: nil)
    @id = id
  end

  def view_template(&)
    div(id: @id, class: "wa-grid wa-gap-m", &)
  end
end
