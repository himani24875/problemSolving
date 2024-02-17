import Foundation

class Solution {
    func countDigits(n: Int) -> Int {
        var count = 0
        var copy = n
        while(copy > 0) {
            copy = copy / 10
            count += 1
        }
        return count
    }
}

let solution = Solution()
print(solution.countDigits(n: 77897878))