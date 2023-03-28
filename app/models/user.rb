class User < ApplicationRecord
    has_many :reviews 
    has_many :ratings
    has_many :movies, through: :favorites, source: :movie

end
