class ChangeDateColumnOfRentals < ActiveRecord::Migration[5.0]
  def change
    change_column :rentals, :start_date, :date
    change_column :rentals, :end_date, :date
  end
end
