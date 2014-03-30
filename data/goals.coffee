# TEMPLATE
goalTemplate = (goal) ->
  "<small>goal</small>
   <h1>#{goal.name}</h1>
   <p>#{goal.description}</p>"

# GOALS
window.game = window.game || {}
window.game.goals = [
  {
    name: "A heap of new coffee joints have opened. Drink all the coffees!"
    description: "Collect 10 coffees to complete the goal"
    template: goalTemplate
    affects: "sporty"
  },
  {
    name: "Federal election is coming up, time to get converting"
    description: "Max out your political points to complete the goal"
    template: goalTemplate
    affects: "political"
  },
  {
    name: "You're obsession with gadgets has reached epic levels"
    description: "Collect 5 gadgets to complete the goal"
    template: goalTemplate
    affects: "political"
  },
  {
    name: "The culture in this city is off the hook"
    description: "Go to 5 events to complete the goal"
    template: goalTemplate
    affects: "political"
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
