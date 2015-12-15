# Description
#   Hubot implementation of Michael Enger's d20.js - https://github.com/michaelenger/d20.js
#
# Configuration:
#   HUBOT_D20_ERROR_MESSAGE - Allows for a custom error message when invalid requests are made.
#
# Commands:
#   hubot roll <number>d<sides> - Rolls a <number> of <sides>-sided "dice" and returns the total
#   hubot verbose roll <number>d<sides> - Rolls a <number> of <sides>-sided "dice" and returns the total plus the list of roll results
#
# Notes:
#   N/A
#
# Author:
#   Michael Fazio <mfazio23@gmail.com>

d20 = require 'd20'
errorMessage = process.env.HUBOT_D20_ERROR_MESSAGE or "I'm not sure what you're asking for here."

module.exports = (robot) ->

  robot.respond /roll (.*)/i, (msg) ->
    roll = d20.roll(msg.match[1])
    msg.reply if roll then roll else errorMessage

  robot.respond /verbose roll (.*)/i, (msg) ->
    roll = d20.roll(msg.match[1], true)
    rollTotal = roll.reduce (t, s) -> t + s

    output = rollTotal + " " + JSON.stringify roll
    msg.reply if rollTotal then output else errorMessage
