# TEMPLATE
characterTemplate = (character) ->
  # Attributes
  sum = 0
  attributes = ""
  _.each character.attributes, (attribute, name) ->
    sum = sum + attribute
    attributes = "#{attributes}<div class='progress'>
      <div class='progress-bar attribute-#{name}' role='progressbar' aria-valuenow='#{(attribute/5)*100}' aria-valuemin='0' aria-valuemax='5' style='width: #{(attribute/5)*100}%;'>
        #{attribute}
      </div>
    </div>"
  
  console.warn character.name, "has a total of", sum

  "<small>Character</small>
   <h1>#{character.name}</h1>
   <p>#{character.description}</p>
   #{attributes}"

# CHARACTERS
window.game = window.game || {}
window.game.characters = [
  {
    name: "Coffee Snob"
    description: "lorem..."
    template: characterTemplate
    attributes: {
      sporty: 2
      political: 4
      snobbery: 5
      awkwardness: 2
      something: 3
    }
  },
  {
    name: "Science Geek"
    description: "lorem..."
    template: characterTemplate
    attributes: {
      sporty: 1
      political: 3
      snobbery: 4
      awkwardness: 3
      something: 3
    }
  },
  {
    name: "Gamer"
    description: "lorem..."
    template: characterTemplate
    attributes: {
      sporty: 2
      political: 4
      snobbery: 5
      awkwardness: 2
      something: 3
    }
  },
  {
    name: "Party Animal"
    description: "lorem..."
    template: characterTemplate
    attributes: {
      sporty: 2
      political: 4
      snobbery: 5
      awkwardness: 2
      something: 3
    }
  },
  {
    name: "Vegan"
    description: "lorem..."
    template: characterTemplate
    attributes: {
      sporty: 2
      political: 4
      snobbery: 5
      awkwardness: 2
      something: 3
    }
  },
  {
    name: "The Ex"
    description: "lorem..."
    template: characterTemplate
    attributes: {
      sporty: 2
      political: 4
      snobbery: 5
      awkwardness: 2
      something: 3
    }
  }
]