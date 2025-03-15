print("This Is For NUMPY")

import numpy as np
# Creating multi-dimensional arrays
a1D = np.array([1, 2, 3, 4])
a2D = np.array([[1, 2], [3, 4]])
a3D = np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]]])

# Creating different sized arrsys
np.array([127, 128, 129], dtype=np.int8)    # int16, int32, int64

# using arange function
np.arange(10)
np.arange(2, 10, dtype=float)
np.arange(2, 3, 0.1)
