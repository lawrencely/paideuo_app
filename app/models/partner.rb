# == Schema Information
#
# Table name: partners
#
#  id    :integer          not null, primary key
#  name  :string(255)
#  email :string(255)
#

class Partner < ActiveRecord::Base
  has_many :tasks
end
