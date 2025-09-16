# frozen_string_literal: true

class Components::GridCell < Components::Base
  def initialize(id:, with_header: false, with_footer: true, with_image: false, span_grid: false)
    @id = id
    @with_header = with_header
    @with_footer = with_footer
    @with_image = with_image
    @span_grid = span_grid
  end

  def view_template(&)
    div(id: @id, class: "#{'wa-span-grid' if @span_grid}") {
      render Components::WebAwesome::WaCard.new(class: "grid-card", with_header: @with_header, with_footer: @with_footer, with_image: @with_image, &)
    }
  end
end
