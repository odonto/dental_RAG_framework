# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->

  cariesRAG = ->
    caries_red = [
      '#caries_clinical_lesions'
      '#caries_patient_symptoms'
    ]
    caries_amber = [
      '#caries_patient_diet'
      '#caries_patient_plaque_control'
      '#caries_patient_sibling'
    ]
    i = 0
    while i < caries_red.length
      item = $(caries_red[i])
      if item.is(':checked')
        return 'red'
      i++
    i = 0
    while i < caries_amber.length
      item = $(caries_amber[i])
      if item.is(':checked')
        return 'amber'
      i++
    'green'

  toothSurfaceLossRAG = (parameters) ->
    if $('#surface_loss_excessive').is(':checked')
      return 'red'
    if $('#surface_loss_patient_symptoms').is(':checked')
      return 'red'
    if $('#surface_loss_moderate').is(':checked')
      return 'amber'
    amber = [
      '#surface_loss_diet'
      '#surface_loss_brushing'
      '#surface_loss_para'
      '#surface_loss_reflux'
    ]
    i = 0
    while i < amber.length
      item = $(amber[i])
      if item.is(':checked')
        return 'amber'
      i++
    'green'

  periodontalRAG = (parameters) ->
    if $('#periodontal_severe').is(':checked')
      return 'red'
    if $('#periodontal_patient_symptoms').is(':checked')
      return 'red'
    if $('#periodontal_moderate').is(':checked')
      return 'amber'
    amber = [
      '#periodontal_patient_plaque_control'
      '#periodontal_patient_smoking'
      '#periodontal_patient_poor_diabetes'
    ]
    i = 0
    while i < amber.length
      item = $(amber[i])
      if item.is(':checked')
        return 'amber'
      i++
    'green'

  softTissueRAG = (parameters) ->
    if $('#soft_tissue_referral').is(':checked')
      return 'red'
    if $('#soft_tissue_patient_symptoms').is(':checked')
      return 'red'
    if $('#soft_tissue_patient_site').is(':checked')
      return 'red'
    if $('#soft_tissue_lesion').is(':checked')
      return 'amber'
    amber = [
      '#soft_tissue_patient_tobacco_use'
      '#soft_tissue_patient_alchohol'
    ]
    i = 0
    while i < amber.length
      item = $(amber[i])
      if item.is(':checked')
        return 'amber'
      i++
    'green'

  setResult = (domElement, message) ->
    label = 'label'
    classname = 'bg-success'
    if message == 'red'
      classname = 'bg-danger'
      label += ' label-danger'
    else if message == 'amber'
      classname = 'bg-warning'
      label += ' label-warning'
    else
      label += ' label-success'
    console.log domElement
    $(domElement + '_result').text(message).attr 'class', label
    return

  $('#caries_clinical_lesions').click (e) ->
    setResult '#caries', cariesRAG()
    return
  $('#caries_no_lesions').click (e) ->
    setResult '#caries', cariesRAG()
    return
  $('#caries_patient_symptoms').click (e) ->
    setResult '#caries', cariesRAG()
    return
  $('#caries_patient_diet').click (e) ->
    setResult '#caries', cariesRAG()
    return
  $('#caries_patient_plaque_control').click (e) ->
    setResult '#caries', cariesRAG()
    return
  $('#caries_patient_sibling').click (e) ->
    setResult '#caries', cariesRAG()
    return
  $('#surface_loss_excessive').click (e) ->
    setResult '#surface_loss', toothSurfaceLossRAG()
    return
  $('#surface_loss_patient_symptoms').click (e) ->
    setResult '#surface_loss', toothSurfaceLossRAG()
    return
  $('#surface_loss_moderate').click (e) ->
    setResult '#surface_loss', toothSurfaceLossRAG()
    return
  $('#surface_loss_commensurate').click (e) ->
    setResult '#surface_loss', toothSurfaceLossRAG()
    return
  $('#surface_loss_diet').click (e) ->
    setResult '#surface_loss', toothSurfaceLossRAG()
    return
  $('#surface_loss_para').click (e) ->
    setResult '#surface_loss', toothSurfaceLossRAG()
    return
  $('#surface_loss_reflux').click (e) ->
    setResult '#surface_loss', toothSurfaceLossRAG()
    return
  $('#periodontal_severe').click (e) ->
    setResult '#periodontal', periodontalRAG()
    return
  $('#periodontal_patient_symptoms').click (e) ->
    setResult '#periodontal', periodontalRAG()
    return
  $('#periodontal_moderate').click (e) ->
    setResult '#periodontal', periodontalRAG()
    return
  $('#periodontal_healthy').click (e) ->
    setResult '#periodontal', periodontalRAG()
    return
  $('#periodontal_patient_plaque_control').click (e) ->
    setResult '#periodontal', periodontalRAG()
    return
  $('#periodontal_patient_smoking').click (e) ->
    setResult '#periodontal', periodontalRAG()
    return
  $('#periodontal_patient_poor_diabetes').click (e) ->
    setResult '#periodontal', periodontalRAG()
    return
  $('#soft_tissue_referral').click (e) ->
    setResult '#cancer', softTissueRAG()
    return
  $('#soft_tissue_patient_symptoms').click (e) ->
    setResult '#cancer', softTissueRAG()
    return
  $('#soft_tissue_patient_site').click (e) ->
    setResult '#cancer', softTissueRAG()
    return
  $('#soft_tissue_patient_tobacco_use').click (e) ->
    setResult '#cancer', softTissueRAG()
    return
  $('#soft_tissue_patient_alchohol').click (e) ->
    setResult '#cancer', softTissueRAG()
    return
  $('#soft_tissue_lesion').click (e) ->
    setResult '#cancer', softTissueRAG()
    return
  $('#soft_tissue_healthy').click (e) ->
    setResult '#cancer', softTissueRAG()
    return
  return

# ---
# generated by js2coffee 2.0.1