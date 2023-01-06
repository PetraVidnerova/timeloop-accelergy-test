# for I in `seq 256 8 1024` #8 16 24 32 40 48 56 64 72 80 88 96 104 112 120 128
# do
#     cp layer.yaml test_layer_$I.yaml
#     eval sed -i 's/XXX/$I/g' test_layer_$I.yaml
# done


IN=224
FILTER=11

for STRIDE in 1 2 4
do
    OUT=`python preved.py $IN $FILTER $STRIDE`
    echo $OUT
    cp layer_stride.yaml stride_layer_$STRIDE.yaml
    eval sed -i 's/XXX/$STRIDE/g' stride_layer_$STRIDE.yaml 
    eval sed -i 's/YYY/$OUT/g' stride_layer_$STRIDE.yaml
done
