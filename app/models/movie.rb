class Movie < ApplicationRecord
    has_many :ratings
    has_many :reviews
    has_many :favorites
    has_many :users, through: :favorites, source: :user
end
