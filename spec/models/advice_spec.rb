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

require 'rails_helper'

RSpec.describe Advice, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
