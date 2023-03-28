class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title 
      t.text :description 
      t.integer :runtime 
      t.integer :rating 
      t.string :release_date 

      t.timestamps
    end
  end
end
