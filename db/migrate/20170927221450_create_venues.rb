class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :dishes_id
      t.integer :address_id
      t.integer :neighborhoods_id

      t.timestamps

    end
  end
end
