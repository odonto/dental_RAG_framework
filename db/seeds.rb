# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


caries_category = Category.find_or_create_by(name: 'Caries (Tooth Decay)')
if caries_category.clinical_factors.empty? && caries_category.patient_factors.empty?
  caries_category.clinical_factors[:teeth_with_carious_lesions] = false
  caries_category.clinical_factors[:teeth_with_no_carious_lesions] = false
  caries_category.patient_factors[:caries_symptoms] = false
  caries_category.patient_factors[:excess_dietary_sugar] = false
  caries_category.patient_factors[:poor_plaque_control] = false
  caries_category.patient_factors[:dry_mouth] = false
  caries_category.save!
end

tooth_surface_category = Category.find_or_create_by(name: 'Tooth Surface Loss')
if tooth_surface_category.clinical_factors.empty? && tooth_surface_category.patient_factors.empty?
  tooth_surface_category.clinical_factors[:tooth_surface_excessive] = false
  tooth_surface_category.clinical_factors[:tooth_surface_moderate] = false
  tooth_surface_category.clinical_factors[:tooth_surface_healthy] = false
  tooth_surface_category.patient_factors[:tooth_surface_symptoms] = false
  tooth_surface_category.patient_factors[:excess_fizzy] = false
  tooth_surface_category.patient_factors[:poor_brushing] = false
  tooth_surface_category.patient_factors[:para_function] =  false
  tooth_surface_category.patient_factors[:reflux] =  false
  tooth_surface_category.save!
end

periodontal_category = Category.find_or_create_by(name: 'Periodontal Disease (Gum Disease)')
if periodontal_category.clinical_factors.empty? && periodontal_category.patient_factors.empty?
  periodontal_category.clinical_factors[:periodontal_excessive] = false
  periodontal_category.clinical_factors[:periodontal_moderate] = false
  periodontal_category.clinical_factors[:periodontal_healthy] = false
  periodontal_category.patient_factors[:periodontal_symptoms] = false
  periodontal_category.patient_factors[:periodontal_poor_plaque_control] = false
  periodontal_category.patient_factors[:smoking] = false
  periodontal_category.patient_factors[:poorly_controlled_diabetes] =  false
  periodontal_category.save!
end

soft_tissue_category = Category.find_or_create_by(name: 'Soft Tissue (Mouth Cancer)')
if soft_tissue_category.clinical_factors.empty? && soft_tissue_category.patient_factors.empty?
  soft_tissue_category.clinical_factors[:lesions_requiring_referral] =  false
  soft_tissue_category.clinical_factors[:lesion] = false
  soft_tissue_category.clinical_factors[:no_lesions] = false
  soft_tissue_category.patient_factors[:soft_tissue_symptoms] = false
  soft_tissue_category.patient_factors[:site_of_lesion] = false
  soft_tissue_category.patient_factors[:tobocco_use] = false
  soft_tissue_category.patient_factors[:alcohol_intake] =  false
  soft_tissue_category.save!
end