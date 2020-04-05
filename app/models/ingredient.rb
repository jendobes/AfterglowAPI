class Ingredient < ActiveRecord::Base
  has_many :skin_concern_ingredients
  has_many :skin_concerns, through: :skin_concern_ingredients
  has_many :product_ingredients
  has_many :products, through: :product_ingredients
end
