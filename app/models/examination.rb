# == Schema Information
#
# Table name: examinations
#
#  id         :integer          not null, primary key
#  date_taken :datetime
#  patient_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Examination < ActiveRecord::Base
  belongs_to :patient
  has_many :categories

  accepts_nested_attributes_for :categories
end
