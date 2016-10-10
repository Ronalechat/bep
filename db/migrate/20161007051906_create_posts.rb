class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :post
      t.integer :user_id
      t.integer :like_num

      t.timestamps null: false
    end
  end
end
