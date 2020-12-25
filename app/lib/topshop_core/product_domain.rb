module TopshopCore
  class ProductDomain
    ProductQuery = TopshopCore::Products::ProductQuery

    class << self
      def search_products(params)
        scope = ProductQuery.active_products
        scope = ProductQuery.search_name(scope, params[:search])
        scope = ProductQuery.filter_by_price(scope, params[:from_price], params[:to_price])
        scope = ProductQuery.sort(scope, params[:sort_type], params[:sort_direction])
        scope = ProductQuery.paginate(scope, params[:page])

        scope.includes(:user)
      end
    end
  end
end
