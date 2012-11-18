jQuery.fn.disableClass = ->
  @each ->
    $(@).addClass('disabled')

jQuery.fn.enableClass = ->
  @each ->
    $(@).removeClass('disabled')

jQuery.fn.disableInput = ->
  @each ->
    $(@).attr('disabled', 'disabled')

jQuery.fn.enableInput = ->
  @each ->
    $(@).attr('disabled', null)

jQuery.fn.disable = ->
  @each ->
    $(@).addClass('disabled')
    $(@).attr('disabled', 'disabled')

jQuery.fn.enable = ->
  @each ->
    $(@).removeClass('disabled')    $(@).attr('disabled', null)

# TOGGLERS
jQuery.fn.toggleClass = (condition)->
  if condition then @enable() else @disable()

jQuery.fn.toggleInput = (condition)->
  if condition then @enableInput() else @disableInput()

jQuery.fn.toggle = (condition)->
  if condition then @enableAll() else @disableAll()

# QUERIES
jQuery.fn.isDisabled = ->
  $(@).hasClass('disabled')

jQuery.fn.isInputDisabled = ->
  $(@).attr('disabled') == 'disabled'