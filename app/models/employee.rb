# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  name       :text
#  role       :text
#  previous   :text
#  education  :text
#  image      :text
#  age        :text
#  email      :text
#  company_id :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Employee < ActiveRecord::Base
  belongs_to :company
end
