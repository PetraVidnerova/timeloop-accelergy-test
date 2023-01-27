NET="stride"

for I in 4 2 1;
do
    echo -n "$I;"
    ENERGY=`cat output/${NET}_tutorial_layer$I.stats | grep "^Energy" | cut -d" " -f2`
    echo -n "$ENERGY;"
    python3 jirka_engergy.py ${NET}_layer_${I}.yaml
done
