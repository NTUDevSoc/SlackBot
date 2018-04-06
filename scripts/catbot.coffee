#Giphy func
qs = require("querystring");

giphy_config = {
  "api_key": process.env.GIPHY_API_KEY,
  "rating": "r",
  "url": "http://api.giphy.com/v1/gifs/random",
  "permission": ["NORMAL"]
};


giphyQueryCreate = (tags) ->
  #api config
  params =
    'api_key': giphy_config.api_key
    'rating': giphy_config.rating
    'format': 'json'
    'limit': 1
  # converting params and msgRequest into a query.
  query = qs.stringify(params)
  if tags != null
    query += '&tag=' + tags.join('+')
  console.log query
  query

giphyMessage = (query, res) ->
  # sending query to giphy.
  request = require('request')
  request giphy_config.url + '?' + query, ((error, response, body) ->
    if error or response.statusCode != 200
      console.error 'giphy: Got error: ' + body
      console.log error
    else
      try
        responseObj = JSON.parse(body)
        console.log 'Sending Message: ', responseObj.data.image_url
        res.send responseObj.data.image_url
        return responseObj.data.image_url
      catch err
        console.log apiID
        return 'Problem Occured.'
    return
  ).bind(this)
  return

module.exports = (robot) ->

  robot.respond /cat(.*)/i, (res) ->
     catkeyword = res.match[1]
     keywordarray = catkeyword.split " "
     res.send "CATS!"
     query = giphyQueryCreate ["cats","cute",keywordarray]
     message = giphyMessage(query,res)

  robot.respond /show me (.*)/i, (res) ->
     thingkeyword = res.match[1]
     res.send "here you are:"
     query = giphyQueryCreate [thingkeyword]
     message = giphyMessage(query,res)
