for I in `seq 8 8 1024`;
do
    echo -n "$I;"
    ENERGY=`cat output/test_tutorial_layer$I.stats | grep "^Energy" | cut -d" " -f2`
    echo -n "$ENERGY;"
    python3 jirka_engergy.py test_layer_${I}.yaml
done
