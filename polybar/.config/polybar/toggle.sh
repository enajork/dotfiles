#!/bin/bash

$(touch .polybar_toggle)
POLYBAR_SHOW=$(cat .polybar_toggle)
if [ "$POLYBAR_SHOW" == "" ]; then
  echo "true" >.polybar_toggle
  POLYBAR_SHOW=$(cat .polybar_toggle)
fi

if [[ "$POLYBAR_SHOW" == "false" ]]; then
  echo "true" >.polybar_toggle
  polybar-msg cmd show
elif [[ "$POLYBAR_SHOW" == "true" ]]; then
  echo "false" >.polybar_toggle
  polybar-msg cmd hide
fi
