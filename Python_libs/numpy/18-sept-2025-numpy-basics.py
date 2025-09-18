
import numpy
import numpy as np
np
<module 'numpy' from '/home/avii/Desktop/calls/lib/python3.13/site-packages/numpy/__init__.py'>
a = [1,2,3,4,5]
a
[1, 2, 3, 4, 5]
a[2]
3
b = np.array([1,2,3,4,5,6])
b
array([1, 2, 3, 4, 5, 6])
c = np.ndarray(2,2)
Traceback (most recent call last):
  File "<python-input-8>", line 1, in <module>
    c = np.ndarray(2,2)
TypeError: Cannot interpret '2' as a data type
c = np.ndarray([2,2])
c
array([[4.64456504e-310, 0.00000000e+000],
       [4.94065646e-324,             nan]])
c = np.ndarray([[4,4], [4,4]])
Traceback (most recent call last):
  File "<python-input-11>", line 1, in <module>
    c = np.ndarray([[4,4], [4,4]])
TypeError: 'list' object cannot be interpreted as an integer
c = np.ndarray([4,4])
c
array([[4.64456477e-310, 0.00000000e+000, 6.90317494e-310,
        6.90317569e-310],
       [6.90317569e-310, 6.90317569e-310, 4.64354982e-310,
        6.90317646e-310],
       [6.90317619e-310, 6.90317615e-310, 6.90317646e-310,
        6.90317615e-310],
       [6.90317618e-310, 6.90317618e-310, 6.90317646e-310,
        6.90317615e-310]])
np.ndim(c)
2
np.ndim(b)
1
d = np.array([[1,2,3],[4,5,6], [7,8,9]])
d
array([[1, 2, 3],
       [4, 5, 6],
       [7, 8, 9]])
d.shape
(3, 3)


