# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  paideuo     :text
#  category_id :integer
#  partner_id  :integer
#  datetime    :datetime
#  created_at  :datetime
#  updated_at  :datetime
#  check_sent  :boolean          default(FALSE)
#

class Task < ActiveRecord::Base
  belongs_to :category
  belongs_to :partner
  validates :paideuo, :presence => true
  validates :datetime, :presence => true
end
