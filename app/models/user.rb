class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products
  has_many :transactions, dependent: :destroy

  validates :email, uniqueness: true

  has_one_attached :photo
  validates :photo, presence: true
end
