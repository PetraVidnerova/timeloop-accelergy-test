import yaml
import sys 

input_file = sys.argv[1]

with open(input_file, "r") as f:
        content = yaml.safe_load(f.read())


values = content["problem"]["instance"]

#print(values)

# kernel size
r, s = values["R"], values["S"]
# otput feature size
m, n = values["P"], values["Q"]
# input features
d_old = values["C"]
# output features
d = values["M"]

assert values["Hdilation"] == values["Wdilation"] == 1
assert values["Hstride"] == values["Wstride"]
assert values["N"] == 1

stride = values["Hstride"]

m_old = (m-1)*stride + r
n_old = (n-1)*stride + s


comp_energy = d*d_old*m*n*r*s

comp_data = (
    d*(d_old*r*s+1) +
    d*d_old*m_old*n_old +
    d*m*n
)

#print(comp_energy + comp_data)

alternative = d *(m*n + d_old *(r*s*(m*n+1)+m_old*n_old)+1)

#print(alternative)

print(comp_energy, comp_data, sep=";")
