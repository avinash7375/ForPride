## Divide and Conquer: Deep Dive

### What is Divide and Conquer?

It’s an approach where you:

1. **Divide:** Break the original problem into smaller subproblems (usually of the same type).
2. **Conquer:** Solve each subproblem independently (often recursively).
3. **Combine:** Merge the solutions of the subproblems to get the final solution.

---

### Why Use Divide and Conquer?

* Often reduces complexity by handling smaller chunks.
* Exploits recursion elegantly.
* Many efficient algorithms use this method.

---

### Classic Examples

| Algorithm                            | Description                                               | Time Complexity                   |
| ------------------------------------ | --------------------------------------------------------- | --------------------------------- |
| **Merge Sort**                       | Split array into halves, sort each half, then merge       | O(n log n)                        |
| **Quick Sort**                       | Partition array around pivot, recursively sort partitions | Average: O(n log n), Worst: O(n²) |
| **Binary Search**                    | Repeatedly halve search space in a sorted array           | O(log n)                          |
| **Strassen’s Matrix Multiplication** | Multiply matrices by dividing them into submatrices       | \~O(n^2.81)                       |

---

### How to Analyze Time Complexity in Divide and Conquer?

Usually, the time complexity is expressed as a **recurrence relation**:

$$
T(n) = a \cdot T\left(\frac{n}{b}\right) + f(n)
$$

Where:

* $a$ = number of subproblems,
* $\frac{n}{b}$ = size of each subproblem,
* $f(n)$ = time to divide and combine subproblems.

---

### Example: Merge Sort Time Complexity

* Divide array into 2 halves → $a = 2$, $b = 2$
* Divide step is O(1), combine step (merge) is O(n)
* Recurrence:

  $$
  T(n) = 2T\left(\frac{n}{2}\right) + O(n)
  $$

Using the **Master Theorem** (which we can cover if you want), the solution is:

$$
T(n) = O(n \log n)
$$

---

### Quick Code: Merge Sort (Python)

```python
def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    
    mid = len(arr) // 2
    left = merge_sort(arr[:mid])
    right = merge_sort(arr[mid:])
    
    return merge(left, right)

def merge(left, right):
    result = []
    i = j = 0
    
    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
            
    result.extend(left[i:])
    result.extend(right[j:])
    
    return result
```

