import numpy
import matplotlib.pyplot as plt

xi = [1,2,3,4,5,6]
pi = [1/8,1/4,1/8,1/6,1/12,3/12]
x_var = numpy.linspace(0, 6.5, num=1000)
fi = numpy.zeros(len(x_var))
print(pi[5])
print(x_var)
arquivo = open("4_4", "w")


def heaviside(x):
    if (x >= 0):
        heaviside = 1
    elif (x < 0):
        heaviside = 0

    return heaviside

for j in range(0,(len(x_var)-1)):
    for i in range(0, 5):
        var_heaviside = x_var[j] - xi[i]
        fi[j] += pi[i] * heaviside(var_heaviside)
    

    print(fi[j], x_var[j], sep=' ', file=arquivo)
    fi = numpy.zeros(len(x_var))

with open("4_4") as arquivo:
    lines = arquivo.readlines()
    eixo_y = [line.split()[0] for line in lines]
    eixo_x = [line.split()[1] for line in lines]

fig = plt.gca()

plt.plot(eixo_x, eixo_y)
plt.xlabel('x')
plt.ylabel('F(x)')
plt.show()


