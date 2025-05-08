## **1. Balanced Parentheses**

```cpp
#include <iostream>
#include <stack>
using namespace std;

bool isValid(string s) {
    stack<char> st;
    for (char c : s) {
        if (c == '(' || c == '{' || c == '[') {
            st.push(c);
        } else {
            if (st.empty()) return false;
            char top = st.top();
            if ((c == ')' && top != '(') ||
                (c == '}' && top != '{') ||
                (c == ']' && top != '[')) {
                return false;
            }
            st.pop();
        }
    }
    return st.empty();
}

int main() {
    string s = "({[]})";
    cout << (isValid(s) ? "true" : "false") << endl;
    return 0;
}
```

---

## **2. Next Greater Element**

```cpp
#include <iostream>
#include <stack>
#include <vector>
using namespace std;

vector<int> nextGreaterElements(vector<int>& nums) {
    int n = nums.size();
    vector<int> res(n, -1);
    stack<int> st;

    for (int i = 0; i < n; i++) {
        while (!st.empty() && nums[i] > nums[st.top()]) {
            res[st.top()] = nums[i];
            st.pop();
        }
        st.push(i);
    }
    return res;
}

int main() {
    vector<int> arr = {4, 5, 2, 25};
    vector<int> result = nextGreaterElements(arr);
    for (int val : result) {
        cout << val << " ";
    }
    return 0;
}
```

---

## **3. Stack Using Two Queues**

```cpp
#include <iostream>
#include <queue>
using namespace std;

class MyStack {
    queue<int> q1, q2;

public:
    void push(int x) {
        q2.push(x);
        while (!q1.empty()) {
            q2.push(q1.front());
            q1.pop();
        }
        swap(q1, q2);
    }

    void pop() {
        if (!q1.empty()) q1.pop();
    }

    int top() {
        return q1.front();
    }

    bool empty() {
        return q1.empty();
    }
};

int main() {
    MyStack st;
    st.push(1);
    st.push(2);
    cout << st.top() << endl; // Output: 2
    st.pop();
    cout << st.top() << endl; // Output: 1
    return 0;
}
```

---

## **4. Stock Span Problem**

```cpp
#include <iostream>
#include <stack>
#include <vector>
using namespace std;

vector<int> calculateSpan(vector<int>& prices) {
    stack<int> st;
    vector<int> span(prices.size());

    for (int i = 0; i < prices.size(); ++i) {
        while (!st.empty() && prices[st.top()] <= prices[i]) {
            st.pop();
        }
        span[i] = st.empty() ? (i + 1) : (i - st.top());
        st.push(i);
    }

    return span;
}

int main() {
    vector<int> prices = {100, 80, 60, 70, 60, 75, 85};
    vector<int> span = calculateSpan(prices);
    for (int val : span) {
        cout << val << " ";
    }
    return 0;
}
```
