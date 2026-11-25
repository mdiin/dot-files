#!/bin/sh

jq -e '.approval == "ask"' > /dev/null && notify-send "ECA Approval needed" "A tool call needs you attention!"
