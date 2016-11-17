class Review < ApplicationRecord
  belongs_to :equipment

  validates :content, presence: true
  validates :rating, presence: true
end
