class SkinConcern < ActiveRecord::Base
  has_many :skin_concern_ingredients
  has_many :ingredients, through: :skin_concern_ingredients
  has_many :skin_concern_products
  has_many :products, through: :skin_concern_products
end
