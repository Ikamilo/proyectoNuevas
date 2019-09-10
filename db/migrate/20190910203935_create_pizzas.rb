class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.references :shape, null: false, foreign_key: true
      t.references :sauce, null: false, foreign_key: true
      t.references :flavor, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :total_prices

      t.timestamps
    end
  end
end
