class CreateJoinTableSongUser < ActiveRecord::Migration[5.0]
  def change
    create_join_table :songs, :users do |t|
      # t.index [:song_id, :user_id]
      # t.index [:user_id, :song_id]
    end
  end
end
