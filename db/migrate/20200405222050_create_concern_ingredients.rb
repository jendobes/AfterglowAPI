class CreateConcernIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :concern_ingredients do |t|
      t.references :concern, foreign_key: true
      t.references :ingredient, foreign_key: true
    end
  end
end
