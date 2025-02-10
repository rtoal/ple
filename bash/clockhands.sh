for i in {0..10}; do
    t=$(echo "scale=6; t=(($i+0.5)*43200/11); scale=0; t/=1; t" | bc)
    h=$((t / 3600))
    m=$((t / 60 % 60))
    s=$((t % 60))
    printf "%02d:%02d:%02d\n" $((h == 0 ? 12 : h)) $((m)) $((s))
done