#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 21 20:15:14 2023

@author: vacilo
"""
import numpy as np
import matplotlib.pyplot as plt
kd = -0.1
kp = 7000
ki = 5
f = open("teste.txt", "w")
def func(s):
    x = ((kd * (s**2)) + (kp * 0.001) + ki)
    y = (((15 + kd) * (s**2)) + ((2000+kp)*s) +ki)
    func = x/y
    return func
for i in range(0,1000,1):
    valor = func(i)
    print(valor, file=f)

with open("teste.txt", "w") as f:
    lines = f.readlines()
    ex = [line.split()[0] for line in lines]
f.close()
plt.plot(np.asarray(ex, float), color='b')
plt.show()