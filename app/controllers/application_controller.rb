class ApplicationController < ActionController::API
  def simple_response(resource, serializer)
    TopShopCore::Helpers::SimpleResponse.perform(resource, serializer)
  end

  def paging_response(collection, serializer)
    TopShopCore::Helpers::PagingResponse.perform(collection, serializer)
  end
end
