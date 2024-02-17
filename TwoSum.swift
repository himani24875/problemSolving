import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            if let val = dict[target - value] {
                return [val, index]
            } else {
                dict[value] = index
            }
        }
        return []
    }
}

let solution = Solution()
print(solution.twoSum([2,7,11,15], 9))