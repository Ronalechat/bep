# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :text
#  post       :text
#  user_id    :integer
#  like_num   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  belongs_to :user
  # has_many :favourites
  has_many :favourites
  has_many :favourited_by, through: :favourites, source: :user

  acts_as_taggable_on :tags
end
