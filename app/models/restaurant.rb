class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, :length => { :minimum => 10, :maximum => 15 }
  validates :category, presence: true, inclusion: {in: CATEGORIES}
end
