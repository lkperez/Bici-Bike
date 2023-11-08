class Member < ApplicationRecord
  has_many :rides
  has_many :reports
  has_many :reviews
  has_many :favorite_routes
end
