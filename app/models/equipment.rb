class Equipment < ApplicationRecord
  belongs_to :user
  has_many :users, through :rentals

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :category, presence: true
  # validates :available, presence: true
  # validates :price, presence: true
  # validates :user, presence: true


  t.string   "title"
    t.string   "description"
    t.string   "category"
    t.boolean  "available"
    t.decimal  "price"
    t.integer  "user_id"
end
