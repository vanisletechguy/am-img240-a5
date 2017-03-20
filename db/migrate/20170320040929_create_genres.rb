class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.string :picture
      

      t.timestamps
    end
  end
end
