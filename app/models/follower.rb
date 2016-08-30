# == Schema Information
#
# Table name: followers
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  follows1   :text
#  follows2   :text
#  follows3   :text
#  education  :text
#  age        :text
#  blurb      :text
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Follower < ActiveRecord::Base
  has_and_belongs_to_many :companies
end
