# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  username        :text
#  name            :text
#  password_digest :string
#  image_thumb     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :favourites
  has_many :favourited_posts, through: :favourites, source: :post
  # has_many :favourites, through: :post_favourites, source: :post

  # validates :email, presence => true, :uniqueness => true
  # validates :username, presence => true, :uniqueness => true

  def has_favourited_post?(post_id)
    Favourite.where(:post_id => post_id, :user_id => self.id).any?
  end

end
