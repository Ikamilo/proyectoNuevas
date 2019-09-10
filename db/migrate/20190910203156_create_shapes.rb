class CreateShapes < ActiveRecord::Migration[6.0]
  def change
    create_table :shapes do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
