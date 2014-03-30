# TEMPLATE
stateTemplate = (state) ->
  "<small>#{state.title}</small>
   <h1>#{state.name}</h1>
   <p>#{state.description}</p>
   <p>#{state.effect}</p>"

# stateS
window.game = window.game || {}
window.game.states = [
  {
    title: "Relationship"
    name: "Single"
    description: "It's ok - I'm a better person when I can focus on my own energy... (Forever Alone...)"
    effect: "+1 Culture, -1 Cash"
    template: stateTemplate
  },
  {
    title: "Relationship"
    name: "Hooked Up"
    description: "Honeymoon period is over and I get sex less now than I did when I was single, but dem hugs :3"
    effect: "+1 Foods, -1 Fun"
    template: stateTemplate
  },
  {
    title: "Politics"
    name: "Left"
    description: "I spend my weekends knitting jumpers for pengiuns in need and 'Like' all the protests I can on Facebook to help save the world"
    effect: "+1 Fun, -1 Cash"
    template: stateTemplate
  },
  {
    title: "Politics"
    name: "Right"
    description: "If you're so desperate for jobs, why don't you move to the country and work in mining? They're always looking for staff."
    effect: "+1 Coffees, -1 Fashion"
    template: stateTemplate
  }
]