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

class Patient < ActiveRecord::Base
  has_many :examinations
end
