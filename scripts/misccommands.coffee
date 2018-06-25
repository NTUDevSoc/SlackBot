# CoffeeScript
module.exports = (robot) ->

  robot.hear /🤔/i, (res) ->
    room = '529515137'
    robot.messageRoom room, res.envelope.user.name
    #if res.envelope.user.name is 'Matthew Harris'
    #  lukeEmoji = robot.brain.get('lukeEmoji')*1 or 0
    #  lukeEmoji =lukeEmoji + 1
    #  res.send "Number of times Luke has used that emoji today:"+lukeEmoji
    #  robot.brain.set 'lukeEmoji',lukeEmoji
