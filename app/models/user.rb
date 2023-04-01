class User < ApplicationRecord
    has_secure_password
    has_many :reviews, dependent: :destroy 
    has_many :ratings, dependent: :destroy 
    has_many :favorites, dependent: :destroy 
    has_many :videos, dependent: :destroy 
    has_many :movies, through: :favorites
    
    validates :email,{
        uniqueness: true,
        presence: true
    }
    validates :username,{
        length: {minimum:5},
        uniqueness: true,
        presence: true
    }
end
