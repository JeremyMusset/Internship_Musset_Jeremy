import os
import sys
import numpy as np
import time
    
start = time.time()
n = int(input("Size of vector = "))
result = float(input("Exact result = 0.06 * Size = "))
    
    # Define a
a = [float(0.2)]*n
    
# Define b
b = [float(0.3)]*n

# Compute a . b
c = 0
for i in range(n) : 
    c = c + a[i]*b[i]
print("Compute = ",format(c,'.22f'))
print("Correct rounding = ",format(result,'.22f'))
print("Time :",time.time() - start)