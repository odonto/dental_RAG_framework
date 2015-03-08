# == Schema Information
#
# Table name: outcomes
#
#  id         :integer          not null, primary key
#  rule_id    :integer
#  risk       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Outcome < ActiveRecord::Base
end
