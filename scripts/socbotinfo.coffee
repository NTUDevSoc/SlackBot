module.exports = (robot) ->

  robot.hear /github/i, (res) ->
    res.send "https://github.com/NTUDevSoc/SlackBot"

  robot.hear /social/i, (res) ->
    res.send """
    Facebook: https://www.facebook.com/groups/ntudevsoc/
    Twitter:  https://twitter.com/DevSoc
    Github:   https://github.com/NTUDevSoc
    Reddit:   https://www.reddit.com/r/NTUDevSoc/
    Discord:  https://discord.gg/vkajCqV
    Youtube:  https://www.youtube.com/user/NTUDevSoc
    """
