# frozen_string_literal: true

class Components::List < Components::Base
  def initialize(id: nil, gap: "l")
    @id = id
    @gap = gap
  end

  def view_template(&)
    div(id: @id, class: "wa-stack wa-gap-#{@gap}", &)
  end
end
