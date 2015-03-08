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

require 'rails_helper'

RSpec.describe Patient, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
