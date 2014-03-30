# TEMPLATE
goalTemplate = (goal) ->
  "<small>goal</small>
   <h1>#{goal.name}</h1>
   <p>
    #{goal.description}
    (#{goal.aim})
   </p>"

# GOALS
window.game = window.game || {}
window.game.goals = [
  {
    name: "A heap of new coffee joints have opened. Drink all the coffees!"
    description: "Collect coffees to complete the goal"
    aim: "+5 Coffees"
    template: goalTemplate
    affects: "coffee"
  },
  {
    name: "Federal election is coming up, time to get converting"
    description: "Make everyone see the world your way"
    aim: "Convert all players political status to 'Left'"
    template: goalTemplate
    affects: "politics"
  },
  {
    name: "Your obsession with gadgets has reached epic levels"
    description: "Collect gadgets to complete the goal"
    aim: "+5 Gadgets"
    template: goalTemplate
    affects: "gadgets"
  },
  {
    name: "The culture in this city is off the hook"
    description: "Go to cultural events to complete the goal"
    aim: "+5 Culture"
    template: goalTemplate
    affects: "culture"
  },
  {
    name: "Date night is coming up, time to class it up a bit"
    description: "Deck yourself out in this seasons latest threads"
    aim: "+5 Fashion"
    template: goalTemplate
    affects: "fashion"
  }
]

# VERIFICATION
goalVerification = () ->
  effected_attributes = {}
  _.each window.game.goals, (goal) ->
    unless effected_attributes[goal.affects]?
      effected_attributes[goal.affects] = 0

    effected_attributes[goal.affects] += 1

  console.warn "Goals:", effected_attributes
