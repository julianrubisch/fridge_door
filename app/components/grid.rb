# frozen_string_literal: true

class Components::Grid < Components::Base
  def initialize(id:)
    @id = id
  end

  def view_template(&)
    div(id: @id, class: "grid is-col-min-12", &)
  end
end
