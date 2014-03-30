# TEMPLATE
itemTemplate = (item) ->
  "<small>item</small>
   <h1>#{item.name}</h1>
   <p>#{item.description}</p>"

# itemS
window.game = window.game || {}
window.game.items = [
  {
    name: "Coffee"
    description: "Orange mocha frapachino"
    template: itemTemplate
  },
  {
    name: "Coffee"
    description: "Guatamalian cold filter"
    template: itemTemplate
  },
  {
    name: "Coffee"
    description: "Schlong (a long short black)"
    template: itemTemplate
  },
  {
    name: "Culture"
    description: "Comedy Festival"
    template: itemTemplate
  },
  {
    name: "Culture"
    description: "Spring Fashion Season"
    template: itemTemplate
  },
  {
    name: "Culture"
    description: "The hot new Low-Tech Minimal Folk Metal band"
    template: itemTemplate
  },
  {
    name: "Gadget"
    description: "Hot new phone that's the size of a tablet"
    template: itemTemplate
  },
  {
    name: "Gadget"
    description: "The latest tablet that's the size of a phone"
    template: itemTemplate
  },
  {
    name: "Gadget"
    description: "3D printed, quantified self wearable that does everything except the thing you need it to do"
    template: itemTemplate
  }
]

# VERIFICATION
itemVerification = () ->
  effected_attributes = {}
  _.each window.game.items, (item) ->
    unless effected_attributes[item.affects]?
      effected_attributes[item.affects] = 0

    effected_attributes[item.affects] += 1

  console.warn "items:", effected_attributes
