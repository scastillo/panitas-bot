# Description:
#   Messing around with the YouTube API.
#
# Commands:
#   hubot sandunguea - Searches YouTube for the query and returns the video embed link.
module.exports = (robot) ->
  robot.respond /(sandunguea|sobetea|bellaquea|perrea|perreo|sandungueo|sobeteo|bellaqueo)/i, (msg) ->
    query = "Daddy Yankee - Muevete y Perrea"
    robot.http("http://gdata.youtube.com/feeds/api/videos")
      .query({
        orderBy: "relevance"
        'max-results': 15
        alt: 'json'
        q: query
      })
      .get() (err, res, body) ->
        videos = JSON.parse(body)
        videos = videos.feed.entry

        unless videos?
          msg.send "No video results for \"#{query}\""
          return

        video  = msg.random videos
        video.link.forEach (link) ->
          if link.rel is "alternate" and link.type is "text/html"
            msg.send link.href
