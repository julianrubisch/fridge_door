# frozen_string_literal: true

class Components::ListItem < Components::Base
  def view_template
    h1 { "ListItem" }
    p { "Find me in app/components/list_item.rb" }
  end
end
