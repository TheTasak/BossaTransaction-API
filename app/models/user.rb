class User < ApplicationRecord
  has_many :transactions
  has_one :layout
end