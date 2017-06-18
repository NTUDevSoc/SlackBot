module.exports = (robot) ->

  robot.hear /github/i, (res) ->
    res.send "https://github.com/NTUDevSoc/SlackBot"
