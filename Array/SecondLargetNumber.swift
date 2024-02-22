
// func findLargest(arr: [Int]) -> Int {
//     var max = Int.min

//     for i in 0 ..< arr.count {
//         max = arr[i] > max ? arr[i] : max
//     }

//     return max
// }

/* O(n) */
// func findSecondLargest(arr: [Int]) -> Int {
//     let largest = findLargest(arr: arr)
//     var secLargest = Int.min

//     for i in 0 ..< arr.count {
//         if arr[i] > secLargest && arr[i] != largest {
//             secLargest = arr[i]
//         }
//     }

//     return secLargest
// }

/* Optimal approach with just one traversal */

func findSecondLargest(arr: [Int]) -> Int {
    var largest = Int.min
    var secLargest = Int.min

    for i in 0 ..< arr.count {
        let val = arr[i]

        if val > largest {
            secLargest = largest
            largest = val
        } else if val > secLargest && val != largest {
            secLargest = val
        }
    }

    return secLargest
}

func findSecondSmallest(arr: [Int]) -> Int {
    var smallest = Int.max
    var secSmallest = Int.max

    for i in 0 ..< arr.count {
        let val = arr[i]

        if val < smallest {
            secSmallest = smallest
            smallest = val
        } else if val < secSmallest && val != smallest {
            secSmallest = val
        }
    }

    return secSmallest
}


var arr = [1, 2, 9, 3, 4, 5, 6]

print(findSecondSmallest(arr: arr))