#!/usr/bin/env zsh
for i in $(seq 0 10); do
    t=$(( (43200 * i + 21600) / 11 ))
    h=$((t / 3600))
    m=$((t / 60 % 60))
    s=$((t % 60))
    printf "%02d:%02d:%02d\n" $((h == 0 ? 12 : h)) $m $s
done
