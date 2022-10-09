class Client < ApplicationRecord

  validates :name, presence: true
  validates :age, numericality: {only_integer: true, greater_than_or_equal_to:18}

  has_many :memberships
  has_many :gyms, through: :memberships
end
