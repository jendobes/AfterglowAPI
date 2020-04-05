class CreateConcernProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :concern_products do |t|
      t.references :concern, foreign_key: true
      t.references :product, foreign_key: true
    end
  end
end
