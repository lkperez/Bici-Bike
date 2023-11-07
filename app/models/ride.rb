class Ride < ApplicationRecord
  belongs_to :member
  belongs_to :bike
end
