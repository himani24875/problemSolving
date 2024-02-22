class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        var sum = 0
        for i in stride(from: 0, through: n - 1, by: 1) {
            sum += nums[i]
        }

        var expectedSum = (n * (n + 1)) / 2
        return expectedSum - sum
    }
}

let sol = Solution()
print(sol.missingNumber([3, 0, 1]))