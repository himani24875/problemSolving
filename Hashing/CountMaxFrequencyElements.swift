import Foundation

// https://leetcode.com/problems/count-elements-with-maximum-frequency/

func maxFrequencyElements(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    var max = Int.min

    for val in stride(from: 0, through: nums.count - 1, by: 1) {
        let count = (dict[nums[val]] ?? 0) + 1
        dict[nums[val]] = count

        max = count > max ? count : max
    }

    var count = 0
    for (_, val) in dict {
        if val == max {
            count += val
        }
    }
    return count
}

print(maxFrequencyElements([1,2,2,2,3,1,4, 5, 6, 5, 5]))

// func countMaxFrequency(arr: [Int]) -> Int {
//     var dict: [Int: Int] = [:]
//     var max = -1

    // for val in stride(from: 0, through: arr.count - 1, by: 1) {
    //     let count = (dict[arr[val]] ?? 0) + 1
    //     dict[arr[val]] = count

    //     max = count > max ? count : max
    // }
//     return max
// }

// print(countMaxFrequency(arr: [1,2,2,2,3,1,4, 5, 6, 5, 5, 5, 5]))