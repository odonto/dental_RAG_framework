class RagScore
  include Mongoid::Document
  field :date, type: DateTime
  field :version, type: String
  field :caries_score, type: String
  field :tsl_score, type: String
  field :perio_score, type: String
  field :soft_tiss_score, type: String
  embedded_in :patients
end
