#!/bin/bash

setReminder(){
  let "seconds = $1 * 60"
  sleep $seconds; notify-send Reminder "$1 minutes have elapsed"
}

if [[ "$1" == "--remind" ]]; then
	setReminder $2
fi
