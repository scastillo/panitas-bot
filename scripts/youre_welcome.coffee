# Makes heart bot more polite.
#
# says you're welcome when it should.
#

welcome = [
  "De nada mono!",
  "Pa que estudiamos pues marica!",
  "Pa las que sea, ñito",
  ";-)",
  "En la buena, socio",
]

angry = [
  "Fuck you too, <user>",
  "Yeah, you suck, <user>",
  "Fuck you <user>",
  "<user>: shut up",
  "<user>: fuck you",
  "Ábrase pato",
  "Bobo hpta!",
  "Cállese bobo!",
  "'cho pato!"
]

module.exports = (robot) ->
  robot.hear /.*(thank(s| you)|th?a?n?ks|gra(x|cias)).*/i, (msg) ->
    msg.send msg.random welcome

  robot.respond /.*(fuck|screw|stupid|shut|pirobo|perro|puta|pato).*/i, (msg) ->
    if msg.match[1]
      anger msg

anger = (msg) ->
  msg.send (msg.random angry).replace("<user>",msg.message.user.name)
