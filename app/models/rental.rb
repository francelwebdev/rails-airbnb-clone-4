class Rental < ApplicationRecord
  belongs_to :equipment
  belongs_to :user

  validates :user, presence: true
  validates :equipment, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
