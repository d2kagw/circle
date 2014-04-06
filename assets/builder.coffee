window.game_version = "v0.2"
window.max_players  = 6
window.limit        = 244

window.positiveNumbers = (num) ->
  if num > 0
    "+#{num}"
  else if num == 0
    "#{num}"
  else
    num

window.uppercaseFirst = (text) ->
  text.charAt(0).toUpperCase() + text.slice(1)

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

window.game.itemBuilder = () ->
  counter = 0
  _.each window.game.items, (items, type) ->
    _.each items, (item) ->
      counter = counter + 1
      html = "<div class='card items'>"
      html = "#{html}#{itemTemplate(type, item)}"
      html = "#{html}</div>"
      $("#items").append html

  return counter

$(document).ready () ->
  count = {}
  count.character = window.game.builder "characters"
  count.goals     = window.game.builder "goals"
  count.events    = window.game.builder "events"
  count.items     = window.game.itemBuilder()

  gameVerification();

# -------------------------------------------------

# VERIFICATION
gameVerification = () ->

  # -----------------------------------------------
  # CHARACTERS
  console.info "VALIDATING CHARACTERS -------------"

  # Check that the characters are even stephen
  verify_characters = {}
  _.each window.game.characters, (character) ->
    sum = _.reduce character.startWith, (a, b) ->
      a + b
    , 0

    neg = _.reduce character.startWith, (a, b) ->
      if b < 0
        a + 1
      else
        a
    , 0

    pos = _.reduce character.startWith, (a, b) ->
      if b > 0
        a + 1
      else
        a
    , 0

    verify_characters[character.name] = {
      sum:        sum
      negative:   neg
      positive:   pos
    }

    console.error character.name, "is not balanced:", sum, "(should be zero)", verify_characters[character.name] unless sum == 0


  # -----------------------------------------------
  # ITEMS
  console.info "VALIDATING ITEMS ------------------"

  item_distributon = {}
  items_total = _.flatten(_.values(window.game.items)).length
  _.each window.game.items, (item) ->
    unless item_distributon[item.length]?
      item_distributon[item.length] = 0

    item_distributon[item.length] += 1

  item_standard = _.last(_.values(item_distributon).sort())
  _.each item_distributon, (val, key) ->
    if val == item_standard
      item_standard = key

  _.each window.game.items, (val, name) ->
    if val.length != Number(item_standard)
      console.error "Item type", name, "is not balanced. It has", val.length, "instead of", item_standard, "items"


  # -----------------------------------------------
  # EVENTS
  console.info "VALIDATING EVENTS ------------------"
  
  total_global = 0
  total_local  = 0
  _.each window.game.events, (event) ->
    if event.global
      total_global += 1
    else
      total_local += 1

  console.info "There are", (total_local + total_global), "events.", total_global, "(", Math.round((total_global / (total_global + total_local))*100) ,"%) are global"

  percent = Math.round((window.game.events.length / (window.game.events.length + items_total)) * 100)
  if (Math.round(items_total / 3) - window.game.events.length) > 0
    console.error "There aren't enough event cards for exciting gameplay. You need", Math.round(items_total / 3) - window.game.events.length, "more"
  else
    console.warn "There might be too many event cards, you're at", percent, "%"


  # -----------------------------------------------
  # GOALS
  console.info "VALIDATING GOALS ------------------"

  verify_goals = {}
  _.each window.game.goals, (goal) ->
    unless verify_goals[goal.affects]?
      verify_goals[goal.affects] = 0

    verify_goals[goal.affects] += 1

  goal_is_imbalanced = false
  goal_distributon   = {}
  _.each verify_goals, (value, goal) ->
    unless goal_distributon[value]?
      goal_distributon[value] = 0

    goal_distributon[value] += 1

  goal_standard = _.last(_.values(goal_distributon).sort())
  _.each goal_distributon, (val, key) ->
    if val == goal_standard
      goal_standard = Number(key)

  _.each verify_goals, (val, name) ->
    if Number(val) != goal_standard
      console.error "Goal", name, "is not balanced. It has", val, "instead of", goal_standard, "goals"

  total_goals = _.keys(window.game.goals).length
  if total_goals / window.max_players < 4
    console.error "Woah, there needs to be", window.max_players * 4 ,"goals to satisfy this number of players. There are only", total_goals


  # -----------------------------------------------
  # FINAL LOGGING
  console.info "LOGGING DATA ----------------------"

  console.warn "Character data:", verify_characters

  total =         window.game.characters.length
  total = total + items_total
  total = total + window.game.goals.length
  total = total + window.game.events.length

  percent = Math.round((window.game.events.length / (window.game.events.length + items_total)) * 100)
  console.info "Events", window.game.events.length, "- Items", items_total, "#{percent}% are events"

  over = total - window.limit 
  console.error "You have too many cards! You're", over, "over the limit !!!!" if over > 0
  console.error "You can add a few cards! You're", Math.abs(over), "under the limit !!!!" if over < 0
  console.info "Total card count:", total