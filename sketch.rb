caries_findings = {
  teeth_with_carious_lesions => false,
  caries_symptoms => false,
  excess_dietary_sugar => false,
  poor_plaque_control => false
}

tsl_findings = {
  tooth_surface_loss => "appropriate", # "excessive" OR "moderate" OR "appropriate"
  tsl_symptoms => false,
  diet_acidic => false,
  poor_tooth_brushing_technique => false,
  grinding => false,
  reflux => false
}

perio_findings = {
  periodontal_grading => false, # "severe" OR "moderate" OR "healthy"
  symptomatic_periodontal_disease => false,
  unsatisfactory_plaque_control =>false,
  smoking => false,
  poorly_controlled_diabetes => # how does a dentist get to find out if your DM is poorly controlled?
}

soft_tissue_findings = {
  lesion => false, # "lesion_requiring_referral" OR "lesion present" OR or false
  symptomatic_lesion => false,
  floor_of_mouth_tongue_lesion => false,
  tobacco_use => false,
  alcohol_intake => false
}