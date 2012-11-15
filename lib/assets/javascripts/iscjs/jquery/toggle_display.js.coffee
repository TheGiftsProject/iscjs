# the built-in toggle method doesn't work properly in firefox and in IE.
# If an element has an original display value of inline or inline-block, then the toggle method
# will not restore its original display value but instead set it as display:block.
jQuery.fn.toggleDisplay = (condition, displayMode) ->
  if condition
    $(@).css("display", displayMode)
  else
    $(@).hide()
