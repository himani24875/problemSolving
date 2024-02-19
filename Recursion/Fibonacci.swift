import Foundation

// TC - O(2^n)
//https://leetcode.com/problems/fibonacci-number/

func fibonacci(n: Int) -> Int {
    if n <= 1 {
        return n
    }
    return fibonacci(n: n - 1) + fibonacci(n: n - 2)
}

print(fibonacci(n: 4))