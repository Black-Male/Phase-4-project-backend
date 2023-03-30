class VideoSerializer < ActiveModel::Serializer
  attributes :id, :video, :title, :description, :likes, :image
  has_one :user
end
