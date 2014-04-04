# TEMPLATE
itemTemplate = (type, description) ->
  "<div class='heading'>
    <h1>#{window.uppercaseFirst(type)}</h1>
    <div class='icon'>
      I
    </div>
  </div>
  <div class='body'>
    <div class='description'>
      <p>
        #{description.split('. ').join('.</p><p>')}
      </p>
    </div>
    <h2>
      Item Value
    </h2>
    <ul class='list-unstyled'>
      <li>
        <span class='value'>+1</span>
        #{window.uppercaseFirst(type)}
      </li>
    </ul>
    <small>
      #{window.game_version}
    </small>
  </div>"

# itemS
window.game = window.game || {}
window.game.items = {
  # -----------------------
  # Food
  food: [
    "Royale with Cheese",
    "Quinoa, Tuna & Lemon Zest Salad",
    "Black Snapper Dumplings",
    "Pulled Pork Roll",
    "Steamed Pork Dumplings",
    "Vegan Duck Salad",
    "Breakfast Burruito",
    "Soft Fish Taco",
    "Super Gourmet Burger",
    "Chicken Parma",
    "Salted Caramel Shake",
    "Safron & Lime Gelatto",
    "Japanese Fusion Tapas",
    "Smashed Avocado & Poached Eggs",
    "Southern Style Chicken with Wasabi Dipping Sauce",
    "Sour Dough Pancakes",
    "Trio of Sliders",
    "Deconstructed Breakfast Burger",
    "Vegan foie gras",
    "Shakshuka",
    "A dozen Cronuts",
    "Gastro Pub Feast",
    "Thai style San Choy Bau",
    "Sunday Roast",
    "Superfood Smoothie",
  ],

  # -----------------------
  # Fashion
  fashion: [
    "Bommer Jacket",
    "Braces & Bow Tie",
    "Knitted Tie",
    "Geeky Cufflinks",
    "V-Neck White T-Shirt",
    "Expensive Denim",
    "Tweed Blazers",
    "Ankle Boots",
    "Sharp Leather Shoes with no Socks",
    "Brightly Coloured Trousers",
    "Home Knitted Scarves",
    "Fluro Trainers",
    "Yoga Gear",
    "Lace Skirt",
    "Low-Cut Sneakers",
    "Denim Shirt",
    "Blue Summer Loafers",
    "Shorts Suit",
    "Canvas Sneakers",
    "Thick Rimmed Vintage Glasses",
    "Skinny Jeans",
    "Floral Pocket Squares",
    "Destressed Jeans",
    "Preppy Blazer",
    "Normcore",
  ],

  # -----------------------
  # Coffeee
  coffee: [
    "White Espresso",
    "Black Black",
    "Affogato",
    "Cold Drip",
    "Cold Filter",
    "Chemex",
    "Pour Over",
    "Aeropress",
    "Soy Latte",
    "Flat White",
    "Cappuccino",
    "Americano",
    "Ristretto",
    "Double Ristretto",
    "Long Black",
    "Short Macchiato",
    "Long Macchiato",
    "Caffe Latte",
    "Mocha",
    "Doppio",
    "Schlong (a short long black)",
    "Orange Mocha Frapachino",
    "Babycino",
    "Espresso",
    "Filtered",
  ],

  ## ---------------
  # Culture
  culture: [
    "Comedy Festival",
    "Spring Fashion Week",
    "Autumn Fashion Festival",
    "Winter Fashion Festival",
    "Low-Tech Minimal Folk Metal side-show",
    "Open Mic Night",
    "Pub Trivia Finals",
    "Karaoke Competition",
    "Undergrad Art Gallery Opening",
    "Best Friends Art Exhibition",
    "Arhouse Film Festival",
    "Rooftop Cinema",
    "Street Art Tour",
    "GLBTQ Mardi Gras",
    "Food & Wine Festival",
    "Fave Old-School DJ playing at your local",
    "Summer Festival Season",
    "Hot new club opening",
    "Street Art Festival",
    "Busker Wander",
    "Opening night at your buddies amateur theatre company",
    "Classy evening at the Ballet",
    "Sing-a-long night at the Cinema",
    "Glee Club",
    "Free tix to red-carpet premiere of the latest blockbuster film",
  ],

  # -----------------------
  # Gadget
  gadget: [
    "Hot new phone that's the size of a tablet",
    "The latest tablet that's the size of a phone",
    "3D printed, quantified self wearable that does everything except the thing you need it to do",
    "Smart Glasses that look silly and don't actually do anything",
    "Hot new laptop",
    "Latest Android device",
    "Wifi enabled scales",
    "Wireless Digital Camera",
    "4K Video Recorder",
    "80\" OLED Curved 3D TV",
    "Web enabled fishtank",
    "Hackerbot PC the size of a credit card",
    "RFID, Internet enabled Fridge",
    "Next-Gen Game Console",
    "Dual Screen, 3D Portable Game Console",
    "Mega Bass Headphones",
    "Noise Cancelling In-Ear Headphones",
    "Web Streaming TV Dongle",
    "Phone Enabled Universal Remote",
    "Phone Controlled Micro Quad Copter",
    "Bluetooth Micro Speaker",
    "Ultraportable Midi Keyboard",
    "Virtual Reality Headset",
    "At-Home 3D Printer",
    "Smartwatch who's battery lasts about a half-hour",
  ],

  # -----------------------
  # Politics
  politics: [
    "Same-Sex Marriage March",
    "National Park Protest",
    "Forum on new Lock-out laws",
    "Write letter to Mining Magnate who complains about taxes",
    "Protest on goverment support to big business",
    "Politician abuses expenses, complain on social media",
    "Politician sex tape revealed, go looking for the clip",
    "Immigration policy changes again, complain on social media",
    "Potest for immigration policy change",
    "Support anti-whaling rally",
    "Click 'Like' on political protest on social media",
    "Click 'Like' on friends political rant on social media",
    "Retweet a friends rant on social media",
    "Instead of donating for the kids in Africa, Click 'Like' on the campaign",
    "Get frustrated by your friends argument on Curch & State integration",
    "Complain to nobody about the government keeping too much of your data",
    "Complain about taxes, yet do nothing",
    "Complain about healthcare services, yet do nothing",
    "Write to your local MP about the oil spils in South America",
    "Complain to your local MP about inflation",
    "Protest online about the governments plan to tax e-commerce",
    "Changes to import laws favour big corporations. Complain on social media.",
    "Live exports is in the media again, sign a partition",
    "Boycot mainstream media who is being predictably bias",
    "Sign a partition on governement privatisation",
  ],
}
