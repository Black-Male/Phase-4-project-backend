class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null:false 
      t.text :description, null: false
      t.integer :runtime 
      t.string :release_date 
      t.string :cast 
      t.string :director

      t.timestamps
    end
  end
end
