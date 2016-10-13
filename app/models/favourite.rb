# == Schema Information
#
# Table name: favourites
#
#  id      :integer          not null, primary key
#  post_id :integer
#  user_id :integer
#

class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
end
