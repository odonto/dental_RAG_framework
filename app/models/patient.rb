class Patient
  include Mongoid::Document
  field :name, type: String
  field :nhs_number, type: String
  field :age, type: Integer
  embeds_many :dental_examinations
end
