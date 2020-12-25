class BaseSerializer
  include JSONAPI::Serializer

  set_key_transform :camel_lower
  alias serialized_json to_json

  def to_json(*_args)
    serializable_hash[:data][:attributes]
  end
end
