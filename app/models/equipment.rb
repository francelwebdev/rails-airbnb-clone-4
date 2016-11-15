class Equipment < ApplicationRecord
  belongs_to :user
  has_many :users, through: :rentals
end
