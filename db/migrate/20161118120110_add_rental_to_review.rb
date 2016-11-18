class AddRentalToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :rental
  end
end
