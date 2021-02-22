#!/bin/sh


if [[ -n "$1" ]]; then setxkbmap $1
else
  current=$(setxkbmap -query | awk 'END{print $2}')
  case $current in 
    us) setxkbmap es
    es) setxkbmap us
    *) setxkbmap us
  esac
fi
