# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  post       :text
#  user_id    :integer
#  like_num   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  belongs_to :user
end
