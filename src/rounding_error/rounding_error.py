import os
import sys
import numpy as np


n = int(input("N = "))
result = float(input("result = 0.06 * n = "))

# Define vector a
a = [float(0.2)]*n
a[0] = float(a[0])
# Print a
print("\na = [",end="")
for i in range (n) :
    print (format(a[i],'.20f'),end="")
print("]")
print("a is a list of ",type(a[0]), " coded on ",sys.getsizeof(a[0])," bits so b is coded on ", sys.getsizeof(a)," bits \n") 


# Define b
b = [float(0.3)]*n

# Print b
print("b = [",end="")
for i in range (n) :
    print(format(b[i],'.18f'),end="")
print("]")

print("b is a list of ",type(b[0]), " coded on ",sys.getsizeof(b[0])," bits so b is coded on ", sys.getsizeof(b)," bits \n")  
###### Weird because we haven't size(b) = n*sizeb[i] ? Error ? Or Python use invisible transformation ?  


# Compute a . b
c = 0
for i in range(n) : 
    c = c + a[i]*b[i]
print("\ncompute = ",format(c,'.22f'))

# Print the correct rounding of the result
print("result = ",format(result,'.22f'))
