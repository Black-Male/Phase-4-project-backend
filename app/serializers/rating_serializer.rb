class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rating, :movie_id, :user_id

  belongs_to :user
  belongs_to :movie
end
