# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  heading    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  has_many :tasks
  belongs_to :user
end
