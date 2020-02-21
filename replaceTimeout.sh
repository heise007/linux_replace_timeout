#! /bin/bash

thispid=$$
(sleep 5; kill $thispid;echo "killed") &
watchdogpid=$!

sleep 4

kill $watchdogpid
echo "over"

