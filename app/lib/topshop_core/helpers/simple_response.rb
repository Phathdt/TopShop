module TopshopCore
  module Helpers
    class SimpleResponse
      class << self
        def perform(resource, serializer)
          { data: serializer.new(resource).to_json }
        end
      end
    end
  end
end
