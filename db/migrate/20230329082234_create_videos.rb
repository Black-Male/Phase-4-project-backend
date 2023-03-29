class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :video
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
