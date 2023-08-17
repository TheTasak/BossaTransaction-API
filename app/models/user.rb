class User < ApplicationRecord
  has_secure_password

  has_many :transactions
  has_one :layout

  validates :username, presence: true, uniqueness: true
end