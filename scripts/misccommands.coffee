# CoffeeScript
module.exports = (robot) ->

  robot.hear /🤔/i, (res) ->
    if res.envelope.user.name is 'Matthew Harris'
      lukeEmoji = robot.brain.get('lukeEmoji')*1 or 0
      lukeEmoji =lukeEmoji + 1
      res.send "Number of times Luke has used that emoji today:"+lukeEmoji
      robot.brain.set 'lukeEmoji',lukeEmoji
