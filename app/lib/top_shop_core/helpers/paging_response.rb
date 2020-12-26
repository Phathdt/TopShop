module TopShopCore
  module Helpers
    class PagingResponse
      class << self
        def perform(collection, serializer)
          page_number = collection.current_page
          total_pages = collection.total_pages
          size = collection.limit_value
          total = collection.total_count

          {
            data: collection.map { |t| serializer.new(t).to_json },
            paginate: {
              page: page_number,
              size: size,
              total: total,
              totalPages: total_pages,
              hasNext: collection.size >= size,
              hasPrev: page_number > 1,
            },
          }
        end
      end
    end
  end
end
