export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../../build/

DIR=../../build
NET=alexnet

for LAYER in `seq 1 8`
do
    ${DIR}/timeloop-mapper eyeriss_like/mapper/mapper_tutorial.yaml  eyeriss_like/arch/eyeriss_like.yaml eyeriss_like/arch/components/* eyeriss_like/constraints/eyeriss_like_arch_constraints.yaml ${NET}_layer${LAYER}.yaml > output/${NET}_tutorial_layer${LAYER}.txt 
    mv timeloop-mapper.stats.txt output/${NET}_tutorial_layer${LAYER}.stats
done
