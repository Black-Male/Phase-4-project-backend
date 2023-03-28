class User < ApplicationRecord
    has_secure_password
    has_many :reviews 
    has_many :ratings
    has_many :movies, through: :favorites, source: :movie
    
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
