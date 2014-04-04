# TEMPLATE
stateTemplate = (state) ->
  # Attributes
  sum = 0
  effect = ""
  _.each state.effect, (value, name) ->
    unless value == 0
      sum = sum + value
      effect = "#{effect}<li><span class='value'>#{window.positiveNumbers(value)}</span> #{window.uppercaseFirst(name)}</li>"

  "<div class='heading'>
    <h1>#{state.name}</h1>
    <div class='icon'>
      S
    </div>
  </div>
  <div class='body'>
    <div class='description'>
      <p>
        #{state.description.split('. ').join('.</p><p>')}
      </p>
    </div>
    <h2>
      Item Effects
    </h2>
    <ul class='list-unstyled'>
      #{effect}
    </ul>
    <small>
      #{window.game_version}
    </small>
  </div>"

# stateS
window.game = window.game || {}
window.game.states = [
  {
    title: "Relationship"
    name: "Single"
    description: "It's ok - I'm a better person when I can focus on my own energy... (Forever Alone...)"
    effect: {
      coffees:   1
      gadgets:   0
      politics: -1
      foods:     1
      culture:   0
      fashion:  -1
    }
    template: stateTemplate
  },
  {
    title: "Relationship"
    name: "Hooked Up"
    description: "Honeymoon period is over and I get sex less now than I did when I was single, but dem hugs :3"
    effect: {
      coffees:  -1
      gadgets:   0
      politics:  1
      foods:    -1
      culture:   0
      fashion:   1
    }
    template: stateTemplate
  },
  {
    title: "Politics"
    name: "Left Wing"
    description: "I spend my weekends knitting jumpers for pengiuns in need and 'Like' all the protests I can on Facebook to help save the world"
    effect: {
      coffees:   0
      gadgets:  -1
      politics:  0
      foods:    -1
      culture:   1
      fashion:   1
    }
    template: stateTemplate
  },
  {
    title: "Politics"
    name: "Right Wing"
    description: "If you're so desperate for jobs, why don't you move to the country and work in mining? They're always looking for staff."
    effect: {
      coffees:   0
      gadgets:   1
      politics:  0
      foods:     1
      culture:  -1
      fashion:  -1
    }
    template: stateTemplate
  }
]