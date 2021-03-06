class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :equipment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
