# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :text
#  overview   :text
#  image      :text
#  industry   :text
#  CEO        :text
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ActiveRecord::Base
  has_many :employees
  has_many :jobs
  has_and_belongs_to_many :followers
  has_and_belongs_to_many :investors
end
