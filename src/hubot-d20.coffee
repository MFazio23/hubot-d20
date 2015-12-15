# Description
#   Hubot implementation of Michael Enger's d20.js
#
# Configuration:
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Michael Fazio <mfazio23@gmail.com>

d20 = require 'd20'

module.exports = (robot) ->

  robot.respond /roll (.*)/i, (msg) ->
    roll = d20.roll(msg.match[1])
    msg.reply roll

  robot.respond /verbose roll (.*)/i, (msg) ->
    roll = d20.roll(msg.match[1], true)
    rollTotal = roll.reduce (t, s) -> t + s
    msg.reply rollTotal + " " + JSON.stringify roll
