# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  paideuo     :text
#  category_id :integer
#  partner_id  :integer
#  datetime    :date
#  created_at  :datetime
#  updated_at  :datetime
#

class Task < ActiveRecord::Base
  belongs_to :category
end
