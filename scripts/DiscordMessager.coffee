# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  robot.router.post '/hubot/postMessage/', (request, response)->
    room   = request.params.room
    data   = if request.body.payload? then JSON.parse request.body.payload else request.body
    secret = data.secret
    console.log "recieved something"
    #robot.messageRoom room, "I have a secret: #{secret}"

    response.send 'OK'
