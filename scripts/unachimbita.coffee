# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot una chimbita - => piropo coqueto
#   hubot una chimba - => piropo coqueto

module.exports = (robot) ->
  robot.respond /una chimb(ita|a)(.*)/i, (msg) ->
    user = msg.message.user.name
    piropos = [
      "uy mi amor, su papá no tenía pipi sino pincel",
      "Yo tengo la cremita para esa cortada",
      "Con esas dos tapas reclama este salchichón",
    ]
    msg.send "#{msg.random(piropos)}"
