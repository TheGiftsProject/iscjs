# Extends the given extended by extendee:
# (1) If extendee is a JSON, extends extended using deep jQuery extend.
# (2) If extendee is an array, extends extended by the array elements expecting each to be a JSON (scneario 1)
# (3) If extendee is a string, extends extended by the static JSONs saved in jQuery.tgp_qtips
jQuery.qtipDeepExtend = (extended, extendee) ->
  if typeof extendee == "object"
    if extendee.length?
      jQuery.qtipDeepExtend(extended, extendeeArg) for extendeeArg in extendee
    else
      jQuery.extend(true, extended, extendee)
  else
    jQuery.extend(true, extended, jQuery.tgp_qtips.qtips[extendee]) if typeof extendee == "string"

jQuery.fn.tgp_qtip = () ->
  qtip_params = {}

  for param in arguments
    do (param) ->
      jQuery.qtipDeepExtend(qtip_params, param)

  @qtip(qtip_params)

jQuery.fn.error_qtip = (message, position = "above") ->
  @tgp_qtip("error_red", "semi-modal", position, "big_tip",
    content: message
  )

jQuery.tgp_qtips = qtips:
                plain_white:
                  style:
                    classes: 'ui-tooltip-light ui-tooltip-shadow'
                    tip:
                      corner: 'bottom center'
                      mimic: 'bottom left'

                shadowed_white:
                  style:
                    classes: 'ui-tooltip-light ui-tooltip-big-shadow ui-tooltip-rounded '

                error_red: # error color
                  style:
                    classes: 'ui-tooltip-red-and-white ui-tooltip-rounded ui-tooltip-shadow'

                info_green:
                  style:
                    classes: 'ui-tooltip-info-green ui-tooltip-rounded ui-tooltip-shadow'

                info_white:
                  style:
                    classes: 'ui-tooltip-light ui-tooltip-rounded ui-tooltip-shadow'

                black:
                  style:
                    classes: "ui-tooltip-dark"

                dropdown:
                  style:
                    classes: 'ui-tooltip-light ui-tooltip-shadow ui-tooltip-dropdown ui-tooltip-rounded'
                    tip:
                      offset: 40
                  position:
                    at: "bottom center"
                    my: "top center"

                big_tip:
                  style:
                    tip:
                      width: 9
                      height: 9

                huge_tip:
                  style:
                    tip:
                      width: 15
                      height: 15

                map_qtip:
                  position:
                    my: 'bottom left'
                  style:
                    tip:
                      offset: 30

                follow_mouse:
                  position:
                    target: 'mouse'
                    viewport: $(window)
                    adjust:
                      x: 5
                      y: -5
                  hide:
                    fixed: true

                above: #above the element
                  position:
                    my: "bottom center"
                    at: "top center"

                on_right: # to the right of the element
                  position:
                    my: "middle left"
                    at: "middle right"

                on_left: # to the left of the element
                  position:
                    my: "middle right"
                    at: "middle left"

                below: # under the element
                  position:
                    at: "bottom center"
                    my: "top center"

                modal: # A popup that opens and stays open until someone closes it
                  show:
                    ready: true
                    effect: false
                  hide:
                    event: false
                    fixed: true

                "modal-overlay":
                  show:
                    ready: true
                    effect: false
                    modal:
                      on: true
                      escape: false
                      blur: true
                  hide:
                    event: false
                    fixed: true

                "semi-modal": #A popup that opens and stays open for interaction- closes when you click out side
                  show:
                    ready: true
                    event: false
                  hide:
                    event: "unfocus"
                    fixed: true
                    delay: 1000

                "semi-modal-on-click":
                  show:
                    event: 'click'
                  hide:
                    event: "unfocus"
                    fixed: true
                    delay: 1000

                hover: # Shows on hover, hides on leave
                  show:
                    event: 'mouseenter'
                  hide:
                    fixed: true
                    event: 'mouseleave'
                    delay: 200