class Member < ApplicationRecord
  has_many :rides
  has_many :reports
end
