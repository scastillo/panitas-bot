# Description:
#   Utility commands surrounding Hubot uptime.
#
# Dependencies:
#   "cheerio": "*"
#   "request": "~2.34.0"
#
# Commands:
#   hubot una chimbita - => piropo coqueto
#   hubot una chimba - => piropo coqueto

cheerio = require('cheerio')
request = require('request')

module.exports = (robot) ->
  robot.respond /una chimb(ita|a)(.*)/i, (msg) ->
    user = msg.message.user.name
    piropos = [
      "uy mi amor, su papá no tenía pipi sino pincel",
      "Yo tengo la cremita para esa cortada",
      "Con esas dos tapas reclama este salchichón",
    ]

    msg.send "#{msg.random(piropos)}"

    request({uri: 'http://apina.biz/?i_really=need_it&ruri=/random', jar: yes}, (err, res, body) ->
      $ = cheerio.load(body)
      img_url = $('#big_image img').attr('src')
      msg.send img_url
    )
