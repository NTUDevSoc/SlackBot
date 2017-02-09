
module.exports = (robot) ->

  robot.hear /cat/i, (res) ->
     res.send "CATS!"
