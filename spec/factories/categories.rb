# == Schema Information
#
# Table name: categories
#
#  id               :integer          not null, primary key
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  clinical_factors :text
#  patient_factors  :text
#

FactoryGirl.define do
  factory :category do
    name "MyString"
  end

end
