#!/bin/bash

(acme -l scripts/acme/acme.dump & sleep 0.5 \
 && wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz \
 & disown)

echo "get to work!"
