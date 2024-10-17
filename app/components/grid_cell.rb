# frozen_string_literal: true

class Components::GridCell < Components::Base
  def initialize(id:)
    @id = id
  end

  def view_template(&)
    div(id: @id, class: "cell") {
      render Components::WebAwesome::WaCard.new(class: "grid-card", with_footer: true, &)
    }
  end
end
