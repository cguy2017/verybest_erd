class CreateBookmarkDishes < ActiveRecord::Migration
  def change
    create_table :bookmark_dishes do |t|
      t.integer :venues_id
      t.integer :user_id

      t.timestamps

    end
  end
end
