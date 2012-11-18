jQuery.fn.isDisabled = ->
  $(@).hasClass('disabled')

jQuery.fn.disable = ->
  @each ->
    $(@).addClass('disabled')

jQuery.fn.disableAll = ->
  @each ->
    $(@).addClass('disabled')
    $(@).attr('disabled', 'disabled')

jQuery.fn.enable = ->
  @each ->
    $(@).removeClass('disabled')

jQuery.fn.enableAll = ->
  @each ->
    $(@).removeClass('disabled')
    $(@).attr('disabled',null)

jQuery.fn.toggleEnable = (condition)->
  if condition
    @enableAll()
  else
    @disableAll()
