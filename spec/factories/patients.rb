# == Schema Information
#
# Table name: patients
#
#  id            :integer          not null, primary key
#  name          :string
#  NHS_number    :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  year_of_birth :integer
#

FactoryGirl.define do
  factory :patient do
    name "MyString"
NHS_number "MyString"
age 1
  end

end
