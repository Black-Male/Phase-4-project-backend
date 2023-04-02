class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest
  has_many :reviews
    has_many :ratings
    has_many :favorites
    # has_many :videos
    # has_many :movies
end
