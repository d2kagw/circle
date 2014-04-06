var page = require('webpage').create();

function scaled(val) {
  return val * scale;
}

// SETTINGS --------------------------------------------

var url = "http://localhost:8000"
var cardSize = {
  width:  280,
  height: 400
};
var scale = 4;
var cards = 244;

// EXPORT --------------------------------------------

page.settings.userAgent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17';
page.customHeaders = {
  Referer: url
};

page.open(url, function (status) {
  if (status !== 'success') {
    phantom.exit();
  } else {
    window.setTimeout(function () {
      page.zoomFactor = scale;

      for (var card = 0; card < cards; card ++) {
        console.warn("Capturing card:", card);
        page.clipRect = {
          left:   scaled(0),
          top:    scaled(0 + (cardSize.height * card)),
          width:  scaled(cardSize.width),
          height: scaled(cardSize.height)
        };
        page.render(phantom.args[0] + "/card-" + card + ".png");
      };

      phantom.exit();
    }, 2000);
  }
});