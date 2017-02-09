
function giphyQueryCreate(tags) {
  //api config
  var params = {
    "api_key": giphy_config.api_key,
    "rating": giphy_config.rating,
    "format": "json",
    "limit": 1
  }

  // converting params and msgRequest into a query.
  var query = qs.stringify(params);

  if (tags !== null) {
    query += "&tag=" + tags.join('+')
  }
  console.log(query)

  return query;
}

function giphyMessage(query, message) {

  // sending query to giphy.
  var request = require("request");
  request(giphy_config.url + "?" + query,
    function(error, response, body) {
      if (error || response.statusCode !== 200) {
        console.error("giphy: Got error: " + body);
        console.log(error);
      } else {
        try {
          var responseObj = JSON.parse(body);
          console.log("Sending Message: ", responseObj.data.image_url);
          return responseObj.data.image_url;
        } catch (err) {
          console.log(apiID);
          return "Problem Occured.";
        }
      }
    }.bind(this)
  );
}
