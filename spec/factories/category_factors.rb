# == Schema Information
#
# Table name: category_factors
#
#  id          :integer          not null, primary key
#  category_id :integer
#  factor_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :category_factor do
    category_id 1
factor_id 1
  end

end
