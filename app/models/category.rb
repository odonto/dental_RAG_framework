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

class Category < ActiveRecord::Base
  serialize :clinical_factors
  serialize :patient_factors

  after_initialize :default_values

  private
  def default_values
    self.clinical_factors ||= {}
    self.patient_factors ||= {}
  end
end