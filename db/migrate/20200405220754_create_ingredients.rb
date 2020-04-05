class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :rating
      t.string :class
      t.boolean :active
      t.float :avg_concentration
      t.string :usage
    end
  end
end
