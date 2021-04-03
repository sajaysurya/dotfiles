'''
init file for dropdown terminal's python
'''
import sys
import numpy as np
import sympy as sp
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt

symbols = sp.symbols
plot = sp.plotting.plot

a = np.reshape(np.arange(16), (4, 4))
b = np.arange(4)

x = symbols('x')
y = symbols('y')

l = [0,1,2,3,4,5,6,7,8,9]
d = pd.DataFrame(a, columns=['a','b','c','d'])

print("Running Python: ", sys.version[:6])
print("Loaded Numpy: ", np.version.version, "with a matrix and b vector")
print("Loaded Sympy: ", sp.__version__, "with x, y symbols")
print("Loaded Pandas: ", pd.__version__)
print("Loaded Matplotlib: ", matplotlib.__version__)
