# TEMPLATE
goalTemplate = (goal) ->
  "<div class='heading'>
    <h1>#{goal.name}</h1>
    <div class='icon'>
      G
    </div>
  </div>
  <div class='body'>
    <h2>
      Goal
    </h2>
    <div class='description'>
      <p>
        #{goal.description.split('. ').join('.</p><p>')}
        <strong>
          #{goal.aim.split('. ').join('.</p><p>')}
        </strong>
      </p>
    </div>
    <small>
      #{window.game_version}
    </small>
  </div>"

# GOALS
window.game = window.game || {}
window.game.goals = [
  {
    name: "A heap of new coffee joints have opened. Drink all the coffees!"
    description: "Collect coffees to complete the goal."
    aim: "+5 Coffees"
    template: goalTemplate
    affects: "coffee"
  },{
    name: "A hot new coffee craze has hit the town"
    description: "Collect coffees to complete the goal."
    aim: "+5 Coffees"
    template: goalTemplate
    affects: "coffee"
  },{
    name: "The cold weather in Guatemala has lead to a really unique brew"
    description: "Collect coffees to complete the goal."
    aim: "+5 Coffees"
    template: goalTemplate
    affects: "coffee"
  },{
    name: "Late nights, early mornings - hit the brew"
    description: "Collect coffees to complete the goal."
    aim: "+5 Coffees"
    template: goalTemplate
    affects: "coffee"
  },

  {
    name: "Your obsession with gadgets has reached epic levels"
    description: "Collect gadgets to complete the goal."
    aim: "+5 Gadgets"
    template: goalTemplate
    affects: "gadgets"
  },{
    name: "You're no longer ahead of the curve, time to upgrade"
    description: "Collect gadgets to complete the goal."
    aim: "+5 Gadgets"
    template: goalTemplate
    affects: "gadgets"
  },{
    name: "4G, HSDPA, LTE, WIFI, OLED..."
    description: "Everything's superseeded - need more gadgets."
    aim: "+5 Gadgets"
    template: goalTemplate
    affects: "gadgets"
  },{
    name: "New job, new kit"
    description: "Time to blow all your cash on the biggest and loudest in home entertainment."
    aim: "+5 Gadgets"
    template: goalTemplate
    affects: "gadgets"
  },

  {
    name: "The culture in this city is off the hook"
    description: "Go to cultural events to complete the goal."
    aim: "+5 Culture"
    template: goalTemplate
    affects: "culture"
  },{
    name: "It's festival season and all the best bands are playing"
    description: "Go to cultural events to complete the goal."
    aim: "+5 Culture"
    template: goalTemplate
    affects: "culture"
  },{
    name: "The theatre season is amazing this year"
    description: "Be sure to bring along your song-book."
    aim: "+5 Culture"
    template: goalTemplate
    affects: "culture"
  },{
    name: "I'm all about supporting our local artists"
    description: "Hit the pubs and streets to get a good dose of culture."
    aim: "+5 Culture"
    template: goalTemplate
    affects: "culture"
  },


  {
    name: "Date night is coming up, time to class it up a bit"
    description: "Deck yourself out in this seasons latest threads."
    aim: "+5 Fashion"
    template: goalTemplate
    affects: "fashion"
  },{
    name: "New season, new look!"
    description: "Deck yourself out in this seasons latest threads."
    aim: "+5 Fashion"
    template: goalTemplate
    affects: "fashion"
  },{
    name: "The bitch at work said I looked shabby, but not chique"
    description: "Time to show that bitch what it means to be chique."
    aim: "+5 Fashion"
    template: goalTemplate
    affects: "fashion"
  },{
    name: "ZOMG, trip to New York! Better bring a spare suitcase"
    description: "Time to stuff your bags with all the new looks."
    aim: "+5 Fashion"
    template: goalTemplate
    affects: "fashion"
  },


  {
    name: "Enough is enough!"
    description: "Time to get involved in federal politics."
    aim: "+5 Politics"
    template: goalTemplate
    affects: "politics"
  },{
    name: "Keep the bastards honest"
    description: "Boycots, Protests and Angry Letters to your MP's."
    aim: "+5 Politics"
    template: goalTemplate
    affects: "politics"
  },{
    name: "Federal election is coming up, time to get converting"
    description: "Make everyone see the world your way."
    aim: "Convert all players political status to 'Left'"
    template: goalTemplate
    affects: "politics"
  },
  {
    name: "Federal election is coming up, time to get converting"
    description: "Make everyone see the world your way."
    aim: "Convert all players political status to 'Right'"
    template: goalTemplate
    affects: "politics"
  }

  {
    name: "A hot new food trend has hit the city"
    description: "Sample all the food there is to offer."
    aim: "+5 Food"
    template: goalTemplate
    affects: "food"
  },{
    name: "Gastro-Pub is so yesterday"
    description: "It's all about Asian fusion super foods!."
    aim: "+5 Food"
    template: goalTemplate
    affects: "food"
  },{
    name: "It's all about Brunch"
    description: "Sample the cities finest breakfast joints."
    aim: "+5 Food"
    template: goalTemplate
    affects: "food"
  },{
    name: "I sure hope the chef does amuse bouche"
    description: "I've had enough of street food, time for some fine dining."
    aim: "+5 Food"
    template: goalTemplate
    affects: "food"
  },
]
