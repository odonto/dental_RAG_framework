# == Schema Information
#
# Table name: factors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :factor do
    name "MyString"
  end

end
