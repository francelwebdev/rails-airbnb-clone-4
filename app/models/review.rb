class Review < ApplicationRecord
  belongs_to :equipment
  belongs_to :rental

  validates :content, presence: true
  validates :rating, presence: true
end
