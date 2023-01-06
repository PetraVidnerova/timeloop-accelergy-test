export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../../build/:../../../accelergy/build/lib/

DIR=../../build
NET=test
#ARCH=simplearch

for LAYER in `seq 192 8 1024`
do
    echo "*** $LAYER ***"
    ${DIR}/timeloop-mapper eyeriss_like/mapper/mapper_tutorial.yaml  eyeriss_like/arch/eyeriss_like.yaml eyeriss_like/arch/components/* eyeriss_like/constraints/eyeriss_like_arch_constraints.yaml ${NET}_layer_${LAYER}.yaml > output/${NET}_tutorial_layer${LAYER}.txt 
    mv timeloop-mapper.stats.txt output/${NET}_tutorial_layer${LAYER}.stats
done

