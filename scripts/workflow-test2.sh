#!/bin/sh

printf "This should %snot%s fail :P" "$(tput bold)" "$(tput sgr0)"
