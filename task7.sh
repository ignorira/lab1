#!/bin/bash
mail="[a-z0-9_.-]+@[a-z_.-]+\.[a-z]+"
grep --ignore-case --only-matching --no-messages --no-filename --binary-files=without-match -E $mail  -r /etc/ | uniq | awk ' { printf("%s, ", $1 ) } ' | sed 's/..$//' > emails.lst
