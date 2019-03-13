class Supplier < ApplicationRecord
  #a product belongs to a supplier
  # a supplier has many images
  has_many :product
end
