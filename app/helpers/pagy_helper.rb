module PagyHelper
  def pagy_wa_nav(pagy, id: nil, pill: false, classes: "pagination", aria_label: nil, **vars)
    id = %( id="#{id}") if id

    html = %(<nav#{id} class="pagy-wa nav" #{nav_aria_label(pagy, aria_label:)}><wa-button-group class="#{classes}">#{
                 wa_prev_html(pagy, pill)})
    pagy.series(**vars).each do |item| # series example: [1, :gap, 7, 8, "9", 10, 11, :gap, 36]
      html << case item
      when Integer
                %(<wa-button #{'pill' if pill} target="_top" appearance="outlined" class="page-item" href="#{pagy_url_for(pagy, item, **vars)}">#{pagy.label_for(item)}</wa-button>)
      when String
                %(<wa-button #{'pill' if pill} target="_top" appearance="outlined" class="page-item active" disabled aria-disabled="true">#{pagy.label_for(item)}</wa-button>)
      when :gap
                %(<wa-button #{'pill' if pill} target="_top" appearance="outlined" class="page-item gap disabled" disabled aria-disabled="true">#{pagy_t('pagy.gap')}</wa-button>)
      else raise InternalError, "expected item types in series to be Integer, String or :gap; got #{item.inspect}"
      end
    end
    html << %(#{wa_next_html(pagy, pill)}</wa-button-group></nav>)
  end

  private

  def wa_prev_html(pagy, pill)
    if (p_prev = pagy.prev)
      %(<wa-button #{'pill' if pill} target="_top" appearance="outlined" class="page-item" aria-label="#{pagy_t('pagy.aria_label.prev')}" href="#{pagy_url_for(pagy, p_prev)}">#{pagy_t('pagy.prev')}</wa-button>)
    else
      %(<wa-button #{'pill' if pill} target="_top" appearance="outlined" class="page-item prev disabled" disabled aria-disabled="true">#{pagy_t('pagy.prev')}</wa-button>)
    end
  end

  def wa_next_html(pagy, pill)
    if (p_next = pagy.next)
      %(<wa-button #{'pill' if pill} target="_top" appearance="outlined" class="page-item" aria-label="#{pagy_t('pagy.aria_label.next')}" href="#{pagy_url_for(pagy, p_next)}">#{pagy_t('pagy.next')}</wa-button>)
    else
      %(<wa-button #{'pill' if pill} target="_top" appearance="outlined" class="page-item next disabled" disabled aria-disabled="true">#{pagy_t('pagy.next')}</wa-button>)
    end
  end
end
