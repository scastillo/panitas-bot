# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot si o que - sisas
#   hubot si o que? - sisas



module.exports = (robot) ->
  robot.respond /si o que(.*)/i, (msg) ->
    user = msg.message.user.name
    confirmations = [
      "eghegheghe clah",
      "sisas",
      "claro",
    ]
    msgs = [
      "yo no soy bobo #{user}",
      "mi rey",
      "corazon",
      "mi vida",
      "mi amor",
      "papi",
      "panita",
      "Firma",
      "llaveria",
      "calida",
      "calidoso",
      "campeon",
      "#{user}",
    ]
    c = msg.random confirmations
    m = msg.random msgs
    msg.send "#{c} #{m}"
