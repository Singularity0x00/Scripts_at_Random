#! /bin/bash

ls -a $(ls | fzf) | grep -v ".sol" | sed 's/[.]/ /g' | sed '1,2d' | wc -l
