# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot si o que - sisas
#   hubot si o que? - sisas

module.exports = (robot) ->
  robot.respond /si o que(.*)$/i, (msg) ->
    msg.send "sisas"
