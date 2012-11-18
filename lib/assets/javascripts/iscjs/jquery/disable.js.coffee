jQuery.fn.disable = ->
  @each ->
    $(@).addClass('disabled')

jQuery.fn.enable = ->
  @each ->
    $(@).removeClass('disabled')

jQuery.fn.disableInput = ->
  @each ->
    $(@).attr('disabled', 'disabled')

jQuery.fn.enableInput = ->
  @each ->
    $(@).attr('disabled', null)

jQuery.fn.disableAll = ->
  @each ->
    $(@).addClass('disabled')
    $(@).attr('disabled', 'disabled')

jQuery.fn.enableAll = ->
  @each ->
    $(@).removeClass('disabled')
    $(@).attr('disabled', null)

# TOGGLERS
jQuery.fn.toggleClass = (condition)->
  if condition then @enable() else @disable()

jQuery.fn.toggleInput = (condition)->
  if condition then @enableInput() else @disableInput()

jQuery.fn.toggleAll = (condition)->
  if condition then @enableAll() else @disableAll()

# QUERIES
jQuery.fn.isDisabled = ->
  $(@).hasClass('disabled')

jQuery.fn.isInputDisabled = ->
  $(@).attr('disabled') == 'disabled'