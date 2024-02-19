import Foundation

// https://leetcode.com/problems/frequency-of-the-most-frequent-element/

// Brute-force approach

// class Solution {
//     func maxFrequency(_ nums: [Int], _ k: Int) -> Int {
//         var max = Int.min
//         var ops = k
//         var sortedArr = nums.sorted()

//         for i in stride(from: sortedArr.count - 1, through: 0, by: -1) {
//             var count = 1

//             for j in stride(from: 0, through: i - 1, by: 1) {
//                 if ops < 1 {
//                     break
//                 }
//                 let diff = sortedArr[i] - sortedArr[j]
//                 if diff <= ops && (ops - diff) >= 0 {
//                     ops -= diff
//                     count += 1
//                 }
//             }

//             max = count > max ? count : max
//         }
//         return max
//     }
// }

// let sol = Solution()
// print(sol.maxFrequency([3, 9, 6], 2))