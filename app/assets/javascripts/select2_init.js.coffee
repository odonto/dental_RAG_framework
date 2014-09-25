$ ->
  $('select.select2').each ->
    $(this).select2(
      allowClear: true unless $(this).data('allow-clear') is false
    )