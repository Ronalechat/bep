class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :username
      t.text :name
      t.string :password_digest
      t.text :image_thumb

      t.timestamps null: false
    end
  end
end
