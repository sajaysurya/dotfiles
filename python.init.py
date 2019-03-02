'''
init file for dropdown terminal's python
'''
import sys
import numpy as np
import sympy as sp
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt

a = np.reshape(np.arange(16), (4, 4))
b = np.arange(4)

x = sp.symbols('x')
y = sp.symbols('y')

print("Running Python: ", sys.version[:6])
print("Loaded Numpy: ", np.version.version, "with a matrix and b vector")
print("Loaded Sympy: ", sp.__version__, "with x, y symbols")
print("Loaded Pandas: ", pd.__version__)
print("Loaded Matplotlib: ", matplotlib.__version__)
