# == Schema Information
#
# Table name: advices
#
#  id                  :integer          not null, primary key
#  category_factory_id :string
#  outcome_id          :string
#  text                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryGirl.define do
  factory :advice do
    category_factory_id "MyString"
outcome_id "MyString"
text "MyString"
  end

end
