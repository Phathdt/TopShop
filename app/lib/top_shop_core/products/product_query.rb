module TopShopCore
  module Products
    class ProductQuery
      class << self
        def active_products
          Product.active
        end

        def search_name(scope, query)
          query ? scope.where('name LIKE ?', "%#{query}%") : scope
        end

        def filter_by_price(scope, from = nil, to = nil)
          scope = from ? scope.where('price >= ?', from) : scope

          to ? scope.where('price <= ?', to) : scope
        end

        def sort(scope, sort_type = nil, sort_direction = nil)
          sort_type ||= :price
          sort_direction ||= :asc

          scope.order(sort_type => sort_direction)
        end
      end
    end
  end
end
