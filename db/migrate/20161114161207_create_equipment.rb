class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :title
      t.string :description
      t.string :category
      t.boolean :available
      t.decimal :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
