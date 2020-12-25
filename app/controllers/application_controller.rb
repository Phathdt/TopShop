class ApplicationController < ActionController::API
  def simple_response(resource, serializer)
    TopshopCore::Helpers::SimpleResponse.perform(resource, serializer)
  end

  def paging_response(collection, serializer)
    TopshopCore::Helpers::PagingResponse.perform(collection, serializer)
  end
end
