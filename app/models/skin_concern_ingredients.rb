class SkinConcernIngredients < ActiveRecord::Base
  belongs_to :skin_concern
  belongs_to :ingredient
end
