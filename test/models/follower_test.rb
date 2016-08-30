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

require 'test_helper'

class FollowerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
