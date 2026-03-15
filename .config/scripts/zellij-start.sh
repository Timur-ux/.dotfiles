#!/usr/bin/env bash

ZJ_SESSIONS=$(zellij list-sessions -ns)
NO_SESSIONS=$(echo "${ZJ_SESSIONS}" | wc -l)
session="$(echo -e "${ZJ_SESSIONS}" | sk)"
if [[ -z "$session" ]]; then
	read -p "Input new session name: " session
fi

if [[ -z "$session" ]]; then
	zellij
else
	zellij attach -c "$session"
fi
