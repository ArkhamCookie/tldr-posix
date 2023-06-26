#!/bin/sh

printf "This should %snot%s fail" "$(tput bold)" "$(tput sgr0)"
