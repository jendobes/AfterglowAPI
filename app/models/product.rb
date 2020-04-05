class Product < ActiveRecord::Base
  has_many :product_ingredients
  has_many :ingredients, through: :product_ingredients
  has_many :skin_concern_products
  has_many :skin_concerns, through: :skin_concern_products
end
