module TopShopCore
  class ProductDomain
    ProductQuery = TopShopCore::Products::ProductQuery
    Paginator = TopShopCore::Helpers::Paginator

    class << self
      def search_products(params)
        scope = ProductQuery.active_products
        scope = ProductQuery.search_name(scope, params[:search])
        scope = ProductQuery.filter_by_price(scope, params[:from_price], params[:to_price])
        scope = ProductQuery.sort(scope, params[:sort_type], params[:sort_direction])
        scope = Paginator.paginate(scope, params[:page], params[:size])

        scope.includes(:user)
      end
    end
  end
end
