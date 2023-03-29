class VideoSerializer < ActiveModel::Serializer
  attributes :id, :video, :title, :description
  has_one :user
end
