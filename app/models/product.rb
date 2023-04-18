class Product < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy

  validates :name, :price, :description, presence: true
  validates :photo, presence: true
end
