# == Schema Information
#
# Table name: investors
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  education  :text
#  age        :text
#  experience :text
#  blurb      :text
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InvestorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
