module Cartify
  module ApplicationHelper
    def shop_icon_quantity
      qty = current_order.order_items.reload.collect(&:quantity).compact.sum
      "<span class='shop-quantity'>#{qty}</span>".html_safe unless qty.zero?
    end

    def active_class(link_path)
      return '' if request.GET.empty?
      link_path.include? request.GET.first.join('=') ? 'active' : ''
    end

    def country_name(object)
      country = ISO3166::Country[object.country]
      country.translations[I18n.locale.to_s] || country.name
    end
  end
end
