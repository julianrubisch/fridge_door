# frozen_string_literal: true

class Components::Grid < Components::Base
  def initialize(id: nil, gap: "m")
    @id = id
    @gap = gap
  end

  def view_template(&)
    div(id: @id, class: "wa-grid wa-gap-#{@gap}", &)
  end
end
