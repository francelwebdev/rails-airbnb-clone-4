class Review < ApplicationRecord
  belongs_to :equipment
  belongs_to :rental
  belongs_to :user

  validates :content, presence: true
  validates :rating, presence: true
  validates :equipment_id, presence: true
end
