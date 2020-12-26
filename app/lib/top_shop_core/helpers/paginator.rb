module TopShopCore
  module Helpers
    class Paginator
      class << self
        def paginate(scope, page_number = nil, size = nil)
          page_number ||= 1
          size ||= 20

          scope.page(page_number).per(size)
        end
      end
    end
  end
end
