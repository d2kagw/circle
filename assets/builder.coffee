window.game_version = "v0.1"

window.positiveNumbers = (num) ->
  if num > 0
    "+#{num}"
  else if num == 0
    "&nbsp;#{num}"
  else
    num

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

  return window.game[source].length

$(document).ready () ->
  count = {}
  count.character = window.game.builder "characters"
  count.goals     = window.game.builder "goals"
  count.items     = window.game.builder "items"
  count.events    = window.game.builder "events"
  count.states    = window.game.builder "states"

  goalVerification()

  total_cards = 0
  _.each count, (a, b, c) ->
    total_cards = total_cards + a

  console.warn "There are", total_cards, "cards", count
