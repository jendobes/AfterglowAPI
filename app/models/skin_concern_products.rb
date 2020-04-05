class SkinConcernProducts < ActiveRecord::Base
  belongs_to :skin_concern
  belongs_to :product
end
