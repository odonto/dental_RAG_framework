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

FactoryGirl.define do
  factory :examination do
    date_taken ""
patient_id ""
  end

end
