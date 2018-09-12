#!/bin/bash

#curl -X POST -H 'Content-type: application/json' --data '{"text":"Love Slack"}' https://hooks.slack.com/services/${channeltoken}/${threadtoken}/${token}

timeForLog=$(date)

# eval - just execute the strings inside "".
eval "echo "${timeForLog} http post sent to slack. Profile image changed."" >> ~/cron.log

# "variable=$(command)" means input the output of the command to the variable.
fileNum=$(awk 'BEGIN{srand();print int(rand() * 50)}')

# Input the token data to the variable "token".
# Put the token.txt file at the same directory.(Just put your token data without any spaces.)
token=$(cat token.txt)

# Send Http request and upload the png file. The files is chosen from 1 of 50 png files randomly.
eval "curl https://slack.com/api/users.setPhoto -F "image=@/root/chara/png/${fileNum}.png" -F "token=${token}""


