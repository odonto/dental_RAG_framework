class DentalExamination
  include Mongoid::Document
  field :date, type: DateTime
  field :caries_findings, type: Hash
  field :tsl_findings, type: Hash
  field :perio_findings, type: Hash
  field :soft_tiss_findings, type: Hash
end
