# TEMPLATE
eventTemplate = (event) ->
  html = ""
  if event.global == true
    html = "<small>global event</small>" 
  else 
    html = "<small>event</small>"

  "#{html}
   <h1>#{event.name}</h1>
   <p>#{event.description}</p>"

# events
window.game = window.game || {}
window.game.events = [
  {
    name: "Bikram Yoga session is over, all the guys are distracted"
    description: "All guys miss one turn when played"
    template: eventTemplate
    global: true
  },
  {
    name: "Your buddy is shouting drinks at a new bar"
    description: "Pick a random card off a player of your choice"
    template: eventTemplate
    global: false
  },
  {
    name: "You scratched your besties new fixie"
    description: "A player grabs a random card from your hand"
    template: eventTemplate
    global: false
  },
  {
    name: "Spring Fashion has just hit the shops, time to refresh the wardrobe"
    description: "Discard one Goal card and grab a new one off the deck"
    template: eventTemplate
    global: false
  },
  {
    name: "You dropped your phone in the loo"
    description: "Discard one Goal card and grab a new one off the deck"
    template: eventTemplate
    global: false
  },
  {
    name: "A hot new smartphone is released, time to get in line"
    description: "You miss a turn"
    template: eventTemplate
    global: false
  },
  {
    name: "You're all hungover as shit"
    description: "Everyone can only draw one until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Turns out the local Vego bar has been using shrimp paste in their laksa"
    description: "All food super powers are lost. Put them in the discard pile"
    template: eventTemplate
    global: true
  },
  {
    name: "Humanitarian aid is needed to support the starving children"
    description: "All players discard two items"
    template: eventTemplate
    global: true
  },
  {
    name: "Your fave band is coming out and isn't doing any side shows"
    description: "Discard two items"
    template: eventTemplate
    global: false
  },
  {
    name: "Humidity has gone too far this time and all our sacred coffee is spoiled"
    description: "No coffee item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Hung parliament is hung"
    description: "No politics item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Dive into your laundry basket to find your lost keys"
    description: "Look at the last 5 cards in the discard deck, take one that you want"
    template: eventTemplate
    global: false
  }
]