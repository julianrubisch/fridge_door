# frozen_string_literal: true

class Components::ListItem < Components::Base
  def initialize(id:)
    @id = id
  end

  def view_template(&)
    div(id: @id, class: "") {
      render Components::WebAwesome::WaCard.new(class: "", with_header: false, with_footer: false, with_image: false) {
        div(class: "wa-flank:end wa-align-items-center", &)
      }
    }
  end

  def actions(gap: "m", &)
    div(class: "wa-stack wa-align-items-end wa-gap-#{gap}", &)
  end
end
