# TEMPLATE
characterTemplate = (character) ->
  # Attributes
  sum = 0
  startWith = ""
  _.each character.startWith, (value, name) ->
    sum = sum + value
    startWith = "#{startWith}<li>#{value} #{name}</li>"
  
  console.warn character.name, "has a total of", sum

  "<small>Character</small>
   <h1>#{character.name}</h1>
   <p>#{character.description}</p>
   <h4>Starts With</h4>
   <ul class='list-unstyled'>
    #{startWith}
   </ul>"

# CHARACTERS
window.game = window.game || {}
window.game.characters = [
  {
    name: "Coffee Snob"
    description: "In a blind test could identify the difference between a french press, Aeropress and filtered coffee. Always has a small bag of beans on hand for that tight spot."
    template: characterTemplate
    startWith: {
      coffees: 3
      gadgets: -1
      politics: 1
      foods: 2
      culture: 1
      fashion: 0
      fun: -3
      cash: 1
    }
  },
  {
    name: "Science Geek"
    description: "Absolute genius and not snobby about it, but ask them a science question and you'll get a thesus as a response. A word of caution, you'll be forever stuck in the friendzone."
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: 2
      politics: 1
      foods: -1
      culture: 1
      fashion: -2
      fun: -2
      cash: 1
    }
  },
  {
    name: "Gamer"
    description: "Has more friends on PSN or Xbox Live than there are 100's and 1000's on a slice of Fairy Bread. Broke, unfit and often stinky. Beware their carpal tunnel, and lack of social maturity."
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: 2
      politics: 1
      foods: 1
      culture: 0
      fashion: -3
      fun: 1
      cash: -2
    }
  },
  {
    name: "Party Animal"
    description: "Without a doubt this is the one person you want to show at your party. Walks around with an assortment of shot glasses and a flask of Sambucca, you can rest assured that any situation can turn into a bender."
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: 1
      politics: 0
      foods: 1
      culture: 2
      fashion: 1
      fun: 3
      cash: -1
    }
  },
  {
    name: "Vegan"
    description: "Knits, Crochet, Bakes, Sewes, Has a stall at the weekend markets and always has a strong opposition to whoever is in government. Although we tease them, wow, these guys can cook!"
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: 0
      politics: 1
      foods: 2
      culture: 2
      fashion: 1
      fun: 1
      cash: -1
    }
  },
  {
    name: "The Ex"
    description: "Broke up with your bestie a few years back, but for some reason still keeps coming around and inviting themselves to your parties. Why oh why won't they get the point?"
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: 1
      politics: 1
      foods: 1
      culture: 1
      fashion: -2
      fun: -1
      cash: -1
    }
  }
]