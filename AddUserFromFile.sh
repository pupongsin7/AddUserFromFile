#!/bin/bash
file=$1
	while IFS= read line
	do
		useradd -m -s /bin/bash -p $(openssl passwd -1 "$line") "$line"
		passwd -e "$line"
	done <"$file"
