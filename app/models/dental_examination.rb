class DentalExamination
  include Mongoid::Document
  field :date, type: DateTime
  field :caries_findings_clinical, type: Hash
  field :caries_findings_patient, type: Hash
  field :tsl_findings, type: Hash
  field :perio_findings, type: Hash
  field :soft_tiss_findings, type: Hash
  embedded_in :patient 
end
