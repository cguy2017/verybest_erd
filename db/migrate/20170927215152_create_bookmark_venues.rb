class CreateBookmarkVenues < ActiveRecord::Migration
  def change
    create_table :bookmark_venues do |t|
      t.integer :dishes_id
      t.integer :user_id

      t.timestamps

    end
  end
end
