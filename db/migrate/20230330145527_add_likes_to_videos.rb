class AddLikesToVideos < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :likes, :integer, default:0
  end
end
