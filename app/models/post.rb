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
  acts_as_taggable_on :tags

  DISQUS_SHORTNAME = Rails.env == "development" ? "dev_shortname".freeze : "production_shortname".freeze

end
