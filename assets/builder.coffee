# Card Builder
window.game = window.game || {}
window.game.builder = (source) ->
  unless window.game[source]?
    console.warn source, "does not exist"

  _.each window.game[source], (object) ->
    html = "<div class='card #{source}'>"
    html = "#{html}#{object.template(object)}"
    html = "#{html}</div>"
    $("##{source}").append html

$(document).ready () ->
  window.game.builder "characters"
  window.game.builder "goals"
  window.game.builder "items"
  window.game.builder "events"
  window.game.builder "states"

  goalVerification()

