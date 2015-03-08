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

class CategoryFactor < ActiveRecord::Base
end
