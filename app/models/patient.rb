class Patient
  include Mongoid::Document
  field :name, type: String
  field :nhs_number, type: String
  field :age, type: Integer
end
