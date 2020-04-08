module.exports = (robot) ->
  robot.respond /Lチカ/, (msg) ->		#Lチカ
    @exec = require('child_process').exec
    command = "sh /home/pi/Desktop/hubot-wata/scripts/shell/test.sh"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?

  robot.respond /fulllighton/, (msg) ->		#全灯
    @exec = require('child_process').exec
    command = "sh /home/pi/Desktop/hubot-wata/scripts/shell/light/full-light-on.sh"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?

  robot.respond /lightoff/, (msg) ->		#消灯
    @exec = require('child_process').exec
    command = "sh /home/pi/Desktop/hubot-wata/scripts/shell/light/light-off.sh"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?

  robot.respond /ecolighton/, (msg) ->		#エコ点灯
    @exec = require('child_process').exec
    command = "sh /home/pi/Desktop/hubot-wata/scripts/shell/light/eco-light-on.sh"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?