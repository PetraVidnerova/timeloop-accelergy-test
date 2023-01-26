NET="alexnet"

for I in `seq 1 8`;
do
    echo -n "$I;"
    ENERGY=`cat output/${NET}_tutorial_layer$I.stats | grep "^Energy" | cut -d" " -f2`
    echo -n "$ENERGY;"
    python3 jirka_engergy.py ${NET}_layer${I}.yaml
done
