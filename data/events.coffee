# TEMPLATE
eventTemplate = (event) ->
  type  = "Event"
  letter = "E"
  klass = ""
  if event.global == true
    type = "Global Event"
    klass = "global"
    # letter = "G"

  "<div class='heading'>
    <h1>#{event.name}</h1>
    <div class='icon #{klass}'>
      #{letter}
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
    name: "Someone bought a cheeesecake to work"
    description: "All girls miss one turn when played"
    template: eventTemplate
    global: true
  },
  {
    name: "The cafe you're at has a terrible barista"
    description: "Make everyone discard one of their Characters Coffee cards"
    template: eventTemplate
    global: true
  },
  {
    name: "It's Summer Festival season but it's pissing with rain"
    description: "Make everyone discard one of their Characters Culture cards"
    template: eventTemplate
    global: true
  },
  {
    name: "The media have gone mad with sound bites"
    description: "Make everyone discard one of their Characters Politics cards"
    template: eventTemplate
    global: true
  },
  {
    name: "You've all entered a food eating competition... And failed..."
    description: "Make everyone discard one of their Characters Food cards"
    template: eventTemplate
    global: true
  },
  {
    name: "Caught doing a late night ice cream run in your pajamas"
    description: "Make everyone discard one of their Characters Fashion cards"
    template: eventTemplate
    global: true
  },
  {
    name: "You got early access to an unreleased gadget"
    description: "Make everyone discard one of their Characters Gadgets cards"
    template: eventTemplate
    global: true
  },
  {
    name: "Seriously, they only serve instant coffee??"
    description: "Make everyone discard one of their Characters Coffee cards"
    template: eventTemplate
    global: true
  },
  {
    name: "I can't believe the band was lipsyncing!"
    description: "Make everyone discard one of their Characters Culture cards"
    template: eventTemplate
    global: true
  },
  {
    name: "More government budget cuts"
    description: "Make everyone discard one of their Characters Politics cards"
    template: eventTemplate
    global: true
  },
  {
    name: "Your quest for a good Eggs Benedict has failed"
    description: "Make everyone discard one of their Characters Food cards"
    template: eventTemplate
    global: true
  },
  {
    name: "Your latest online order has arrived and nothing fits"
    description: "Make everyone discard one of their Characters Fashion cards"
    template: eventTemplate
    global: true
  },
  {
    name: "The latest wearable causes skin irritations, you have to return it"
    description: "Make everyone discard one of their Characters Gadgets cards"
    template: eventTemplate
    global: true
  },
  {
    name: "Your buddy is shouting drinks at a new bar"
    description: "Take a played Item card your choice from of another character"
    template: eventTemplate
    global: false
  },
  {
    name: "You're broke. Scab some stuff off your mates."
    description: "Take a played Item card of your choice from another character"
    template: eventTemplate
    global: false
  },
  {
    name: "You left your wallet at home, borrow some stuff"
    description: "Take a played Item card of your choice from another character"
    template: eventTemplate
    global: false
  },
  {
    name: "Call in a favour from your mates"
    description: "Take a played Item card of your choice from another character"
    template: eventTemplate
    global: false
  },
  {
    name: "It's your buddies turn to get the round"
    description: "Take a played Item card of your choice from another character"
    template: eventTemplate
    global: false
  },
  {
    name: "Raid your friends fridge while house sitting"
    description: "Take a played Item card of your choice from another character"
    template: eventTemplate
    global: false
  },
  {
    name: "Your bestie scratched your new fixie"
    description: "Steal a random card from a players hand"
    template: eventTemplate
    global: false
  },
  {
    name: "Your B.F.F just spilled the Bordeaux on your new outfit"
    description: "Steal a random card from a players hand"
    template: eventTemplate
    global: false
  },
  {
    name: "Your wingman hooked and you got nothing"
    description: "Steal a random card from a players hand"
    template: eventTemplate
    global: false
  },
  {
    name: "The bar your friend recommended sucks balls"
    description: "Steal a random card from a players hand"
    template: eventTemplate
    global: false
  },
  {
    name: "Your bestie ate all your fries"
    description: "Steal a random card from a players hand"
    template: eventTemplate
    global: false
  },
  {
    name: "Your BFF borrwed your jacket and never gave it back"
    description: "Steal a random card from a players hand"
    template: eventTemplate
    global: false
  },
  {
    name: "Spring Fashion has just hit the shops, time to refresh the wardrobe"
    description: "Discard and replace one of yours, or another players Goal cards"
    template: eventTemplate
    global: false
  },
  {
    name: "Your life is going nowhere, time for a change in direction"
    description: "Discard and replace one of yours, or another players Goal cards"
    template: eventTemplate
    global: false
  },
  {
    name: "Times are changing, and so are you"
    description: "Discard and replace one of yours, or another players Goal cards"
    template: eventTemplate
    global: false
  },
  {
    name: "You dropped your phone in the loo"
    description: "Discard and replace one of yours, or another players Goal cards"
    template: eventTemplate
    global: false
  },
  {
    name: "You've decided to take your budget seriously"
    description: "Discard and replace one of yours, or another players Goal cards"
    template: eventTemplate
    global: false
  },
  {
    name: "Massive layoffs at work, time to look for something new"
    description: "Discard and replace one of yours, or another players Goal cards"
    template: eventTemplate
    global: false
  },
  {
    name: "A hot new smartphone is released, time to get in line"
    description: "Force a player to miss a turn"
    template: eventTemplate
    global: false
  },
  {
    name: "This hangover is beyond control"
    description: "Force a player to miss a turn"
    template: eventTemplate
    global: false
  },
  {
    name: "The hot new cafe doesn't take reservations, get in line"
    description: "Force a player to miss a turn"
    template: eventTemplate
    global: false
  },
  {
    name: "You're hungover as shit"
    description: "Force a player to miss a turn"
    template: eventTemplate
    global: false
  },
  {
    name: "Humanitarian aid is needed to support the starving children"
    description: "Make everyone discard two of their Characters Items"
    template: eventTemplate
    global: true
  },
  {
    name: "The gig you were all going to is cancelled"
    description: "Make everyone discard two of their Characters Items"
    template: eventTemplate
    global: true
  },
  {
    name: "Dive into your laundry basket to find your lost keys"
    description: "Look at the last 5 cards in the discard deck, take one that you want"
    template: eventTemplate
    global: false
  },
  {
    name: "Find a long-lost gift card in your old bag"
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
    name: "The humidity has spoiled all your coffee beans"
    description: "No Coffee item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Turns out the local Vego bar has been using shrimp paste in their laksa"
    description: "No Food item cards can be played until this card is covered"
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
    name: "The hottest new gadget is delayed a few months"
    description: "No Gadget item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Everyone's got the flu so no clubbing this weekend"
    description: "No Culture item cards can be played until this card is covered"
    template: eventTemplate
    global: false
  },
  {
    name: "Your out-of-town weekend is miles from the nearest cafe"
    description: "No Coffee item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "It's your housemates time to cook dinner and it smells like shit"
    description: "No Food item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Another day, another underlivered promise"
    description: "No Politics item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "You're all super frumpy from eating too many delicious cookies"
    description: "No Fashion item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "The internet is down"
    description: "No Gadget item cards can be played until this card is covered"
    template: eventTemplate
    global: true
  },
  {
    name: "Payday! Time to spoil yourself"
    description: "Place this next to your Character until the end of the game. Add +1 to any Item category you want."
    template: eventTemplate
    global: false
  },
  {
    name: "Found a gift voucher in your sock drawer"
    description: "Place this next to your Character until the end of the game. Add +1 to any Item category you want."
    template: eventTemplate
    global: false
  },
  {
    name: "It's your birthday and you're feeling evil"
    description: "Everyone must discard an Item card of your choosing"
    template: eventTemplate
    global: true
  },
  {
    name: "It's my party and you'll do what I say"
    description: "Everyone must discard an Item card of your choosing"
    template: eventTemplate
    global: true
  },
]