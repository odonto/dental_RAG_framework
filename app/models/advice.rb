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

class Advice < ActiveRecord::Base
end
