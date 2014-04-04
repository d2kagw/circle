# TEMPLATE
eventTemplate = (event) ->
  type = ""
  if event.global == true
    type = "Global Event"
  else 
    type = "Event"

  "<div class='heading'>
    <h1>#{event.name}</h1>
    <div class='icon'>
      E
    </div>
  </div>
  <div class='body'>
    <h2>
      #{type}
    </h2>
    <div class='description'>
      <p>
        #{event.description.split('. ').join('.</p><p>')}
      </p>
    </div>
    <small>
      #{window.game_version}
    </small>
  </div>"

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
    name: "???"
    description: "All girls miss one turn when played"
    template: eventTemplate
    global: true
  },
  {
    name: "It's pissing down and you're at a summer festival"
    description: "Take everyone's item cards, shuffle and redistribute"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "Everyone discard one played Coffee item card"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "Everyone discard one played Culture item card"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "Everyone discard one played Politics item card"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "Everyone discard one played Food item card"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "Everyone discard one played Fashion item card"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "Everyone discard one played Gadgets item card"
    template: eventTemplate
    global: true
  },
  {
    name: "The TED video you watched totally changed your view on the world"
    description: "Flip your political status card"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "Flip your political status card"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "Flip your political status card"
    template: eventTemplate
    global: false
  },
  {
    name: "The current Prime Minister is a total asshole"
    description: "Flip your political status card"
    template: eventTemplate
    global: false
  },
  {
    name: "You've been flirting too much with the hotties at the gym"
    description: "Flip your Relationship card to single"
    template: eventTemplate
    global: false
  },
  {
    name: "It's not me, it's you"
    description: "Flip your Relationship card to single"
    template: eventTemplate
    global: false
  },
  {
    name: "All those Yoga sessions actually payed off!"
    description: "Flip your Relationship card to 'Hooked Up'"
    template: eventTemplate
    global: false
  },
  {
    name: "You went online dating in feat of your boss threats to hook you up with a friend"
    description: "Flip your Relationship card to 'Hooked Up'"
    template: eventTemplate
    global: false
  },
  {
    name: "Your buddy is shouting drinks at a new bar"
    description: "Pick a random card off a player of your choice"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "Pick a random card off a player of your choice"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "Pick a random card off a player of your choice"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
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
    name: "????"
    description: "A player grabs a random card from your hand"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "A player grabs a random card from your hand"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
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
    name: "????"
    description: "Discard one Goal card and grab a new one off the deck"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
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
    name: "????"
    description: "You miss a turn"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "You miss a turn"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
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
    name: "????"
    description: "Everyone can only draw one until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Humanitarian aid is needed to support the starving children"
    description: "All players discard two played items"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "All players discard two played items"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "Discard a played item"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "Discard a played item"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "Discard a played item"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "Discard a played item"
    template: eventTemplate
    global: false
  },
  {
    name: "Dive into your laundry basket to find your lost keys"
    description: "Look at the last 5 cards in the discard deck, take one that you want"
    template: eventTemplate
    global: false
  },
  {
    name: "Your fave band is coming out and isn't doing any side shows"
    description: "No Culture item cards can be played until this card is covered"
    template: eventTemplate
    global: false
  },
  {
    name: "Humidity has gone too far this time and all our sacred coffee is spoiled"
    description: "No Coffee item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Turns out the local Vego bar has been using shrimp paste in their laksa"
    description: "No Food items can be played while this card is shown"
    template: eventTemplate
    global: true
  },
  {
    name: "Hung parliament is hung"
    description: "No Politics item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "You've stacked on a few and can't fit into any of your threads"
    description: "No Fashion item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Hot new gadget is delayed"
    description: "No Gadget item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "No Culture item cards can be played until this card is covered"
    template: eventTemplate
    global: false
  },
  {
    name: "????"
    description: "No Coffee item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "No Food items can be played while this card is shown"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "No Politics item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "No Fashion item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "????"
    description: "No Gadget item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
]