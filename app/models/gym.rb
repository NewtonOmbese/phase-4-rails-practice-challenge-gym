class Gym < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true

  has_many :memberships, dependent: :destroy
  has_many :clients, through: :memberships
end
