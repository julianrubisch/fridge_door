# frozen_string_literal: true

class Components::GridCell < Components::Base
  def initialize(id:, with_header: false, with_footer: true, with_image: false)
    @id = id
    @with_header = with_header
    @with_footer = with_footer
    @with_image = with_image
  end

  def view_template(&)
    div(id: @id, class: "cell") {
      render Components::WebAwesome::WaCard.new(class: "grid-card", with_header: @with_header, with_footer: @with_footer, with_image: @with_image, &)
    }
  end
end
