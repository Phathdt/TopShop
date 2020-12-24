class Product < ApplicationRecord
  scope :active, -> { where(active: true) }

  belongs_to :user
end
