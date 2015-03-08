# == Schema Information
#
# Table name: examinations
#
#  id         :integer          not null, primary key
#  date_taken :datetime
#  patient_id :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Examination, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
