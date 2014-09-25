$ ->
  $(document).on 'click', 'button[data-after-save]', ->
    $(this).closest('#modalWindow').data('after-save', $(this).data('after-save'))

  $(document).on 'ajax-modal-show', ->
    $('select.select2').select2()

  $(document).on 'ajax-modal-shown', ->
    $('#modalWindow [autofocus]').first().focus()

    # Resets the form if we're doing 'Save and add another'
    if $('#modalWindow form').size() > 0
      $('#modalWindow').data('original-content', $('#modalWindow form').html())

  $(document).on('after-save-close', '#modalWindow', (event, msg)->
    $(this).modal('hide')
    msg = if msg? then msg else 'Successfully saved record'
    $.flashAlert(msg, 'alert-success')
  ).on 'after-save-reset', '#modalWindow', ->
    $('form', $(this)).html($(this).data('original-content'))
    $('[autofocus]', $(this)).first().focus()
    $('.modal-save-notice', $(this)).fadeIn().delay(2000).fadeOut()