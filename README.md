# ISCJS

This gem includes all of the JavaScript plugins we wrote at eBay ISC.

## Installation

Add `gem iscjs` to your Gemfile

## Usage

Version 0.1 supports the following plugins:

ezQtip with QTip2 - `//= require iscjs/qtip` (same the JS and CSS)

 * Added support for classes concatenation. You can now define custom ezQtip styles with classes so when you provide

 an additional hash with classes, they will be concatenated to the final hash.

 * You can access ezQtip with element.ezQtip or element.tgp_qtip (backwards compatibility)

 * You can define your own custom ezQtip hashes inside jQuery.ezQtips.

   Example:
    ```coffee
    jQuery.ezQtips =
        qtips:
            custom_style:
                style:
                    classes: 'some-custom-style'
    ```

JQuery plugins:

JQuery Placeholder - `//= require iscjs/jquery/placeholder`

JQuery Shake - `//= require iscjs/jquery/shake`

JQuery Toggle Display - `//= require iscjs/jquery/toggle_display`

You can also specify all of 'em: `//= require iscjs/jquery/all`