import numpy as np
import pandas as pd

# series - 1d data - array that stores some values

a = pd.Series([1,2,3,4,5,6], index = ['a', 'b', 'c', 'd', 'e', 'f'])

data = {
        "name" : ["name1", "name2", "name3"],
        "std" : [12, 13, 14]
        }

b = pd.DataFrame(data)

print("INFO OF IT : \n",b.info())
print("Description of it : \n",b.describe())
print("HEAD OF IT : \n", b.head())
print("TAIL OF IT : \n", b.tail())
