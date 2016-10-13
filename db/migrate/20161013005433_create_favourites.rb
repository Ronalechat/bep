class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :post_id
      t.integer :user_id
    end
  end
end
