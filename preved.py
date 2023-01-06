import sys
import math

inputs, k, stride =  map(int, sys.argv[1:])

print(math.ceil((inputs-k)/stride) +1)
