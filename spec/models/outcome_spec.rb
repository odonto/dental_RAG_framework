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

require 'rails_helper'

RSpec.describe Outcome, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
