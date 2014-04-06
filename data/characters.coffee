# TEMPLATE
characterTemplate = (character) ->
  # Attributes
  sum = 0
  startWith = ""
  _.each character.startWith, (value, name) ->
    sum = sum + value
    startWith = "#{startWith}<li><span class='value'>#{window.positiveNumbers(value)}</span>#{window.uppercaseFirst(name)}</li>"
  
  "<div class='heading'>
    <h1>#{character.name}</h1>
    <div class='icon'>
      C
    </div>
  </div>
  <div class='body'>
    <div class='description'>
      <p>
        #{character.description.split('. ').join('.</p><p>')}
      </p>
    </div>
    <h2>
      Starts With Items
    </h2>
    <ul class='list-unstyled'>
      #{startWith}
    </ul>
    <small>
      #{window.game_version}
    </small>
  </div>"

# CHARACTERS
window.game = window.game || {}
window.game.characters = [
  {
    name: "Coffee Snob"
    description: "In a blind test could identify the difference between a french press, Aeropress and filtered coffee. Always has a small bag of beans on hand for that tight spot."
    template: characterTemplate
    startWith: {
      coffees: 3
      gadgets: -2
      politics: -1
      foods: 0
      culture: 1
      fashion: -1
    }
  },
  {
    name: "Science Nerd"
    description: "Absolute genius and not snobby about it, but ask them a science question and you'll get a thesus as a response. A word of caution, you'll be forever stuck in the friendzone."
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: 2
      politics: 1
      foods: -1
      culture: 0
      fashion: -3
    }
  },
  {
    name: "Gamer"
    description: "Has more friends on PSN or Xbox Live than there are 100's and 1000's on a slice of Fairy Bread. Broke, unfit and often stinky. Beware their carpal tunnel, and lack of social maturity."
    template: characterTemplate
    startWith: {
      coffees: 2
      gadgets: 3
      politics: 0
      foods: -1
      culture: -1
      fashion: -3
    }
  },
  {
    name: "Party Animal"
    description: "Without a doubt this is the one person you want to show at your party. Walks around with an assortment of shot glasses and a flask of Sambucca, you can rest assured that any situation can turn into a bender."
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: -2
      politics: -2
      foods: 0
      culture: 1
      fashion: 2
    }
  },
  {
    name: "Vegan"
    description: "Knits, Crochet, Bakes, Sewes, Has a stall at the weekend markets and always has a strong opposition to whoever is in government. Although we tease them, wow, these guys can cook!"
    template: characterTemplate
    startWith: {
      coffees: -1
      gadgets: -2
      politics: 1
      foods: 3
      culture: 0
      fashion: -1
    }
  },
  {
    name: "Performer"
    description: "Is always trying to get you to come to their latest show. ????"
    template: characterTemplate
    startWith: {
      coffees: 0
      gadgets: -2
      politics: 2
      foods: -1
      culture: 3
      fashion: -2
    }
  },
  {
    name: "Agency Douche"
    description: "Works in Media or Advertising earning big bucks to not do much. Always tells you that their job is really hard, but really, all they do is transport paper between the agency and the clients office."
    template: characterTemplate
    startWith: {
      coffees: 0
      gadgets: -1
      politics: -2
      foods: -1
      culture: 1
      fashion: 3
    }
  },
  {
    name: "Psychologist"
    description: "Has been studying psychology for two simesters, knows everything about the world. ????"
    template: characterTemplate
    startWith: {
      coffees: -1
      gadgets: -2
      politics: 2
      foods: 1
      culture: 2
      fashion: -2
    }
  },
  {
    name: "Computer Geek"
    description: "Has a seemingly endless supply of t-shirts, vinyl toys and has always 'just returned' from Japan. Could you please stop comparing them to characters from the Big Bang Theory?"
    template: characterTemplate
    startWith: {
      coffees: 2
      gadgets: 1
      politics: 0
      foods: -1
      culture: -2
      fashion: 0
    }
  },
  {
    name: "Unemployed Artist"
    description: "Yet somehow always seems to have the hottest dates? ???"
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: -3
      politics: 2
      foods: -1
      culture: 3
      fashion: -2
    }
  },
  {
    name: "Social Media Addict"
    description: "Has more photos of meals they've eaten than pics of their family. Is the first to respond to any social media activity even at ghastly hours. Has an extensive collection of GIFs and Memes."
    template: characterTemplate
    startWith: {
      coffees: 2
      gadgets: 2
      politics: -2
      foods: 1
      culture: -2
      fashion: -1
    }
  },
  {
    name: "Foodie"
    description: "When you trow a party and say 'bring nothing', this is the only person who you hope breaks the rule. Seriously, those macarons A.M.A.Z.I.N.G!"
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: -2
      politics: -1
      foods: 3
      culture: 0
      fashion: -1
    }
  },
  {
    name: "Entrepreneur"
    description: "\"There's an App for that!\" Well, if there isn't, you'll be darn sure they'll be pitching one to your local Angel Fund in the next few days."
    template: characterTemplate
    startWith: {
      coffees: 2
      gadgets: 1
      politics: 2
      foods: -1
      culture: -1
      fashion: -3
    }
  },
  {
    name: "Activist"
    description: "How the hell to these guys have so many opinions on political policy?. Be sure to keep an eye out for them on tonights news, they're the ones being sprayed with tear gas"
    template: characterTemplate
    startWith: {
      coffees: 1
      gadgets: -1
      politics: 3
      foods: -1
      culture: 1
      fashion: -3
    }
  }
]