class ProductSerializer < BaseSerializer
  attributes :id, :name, :price, :original_price

  attribute :user do |object|
    UserSerializer.new(object.user).serializable_hash
  end
end
