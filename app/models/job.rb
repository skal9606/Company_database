# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  title      :text
#  role       :text
#  salary     :text
#  company_id :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Job < ActiveRecord::Base
  belongs_to :company
end
