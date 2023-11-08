class Member < ApplicationRecord
  has_many :rides
  has_many :reports
  has_many :reviews
end
