export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../../build/:../../../accelergy/build/lib/

DIR=../../build
NET="stride"

for S in 4 2 1
do
    echo "*** $S ***"
    ${DIR}/timeloop-mapper eyeriss_like/mapper/mapper_tutorial.yaml  eyeriss_like/arch/eyeriss_like.yaml eyeriss_like/arch/components/* eyeriss_like/constraints/eyeriss_like_arch_constraints.yaml ${NET}_layer_${S}.yaml > output/${NET}_tutorial_layer${S}.txt 
    mv timeloop-mapper.stats.txt output/${NET}_tutorial_layer${S}.stats
done

