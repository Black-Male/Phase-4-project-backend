class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :rating, inclusion: {in:1..10, message:"is not within 1 and 10"}

end
