import Foundation

func swap(arr: inout [Int], i: Int, j: Int) {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

func bubbleSort(arr: inout [Int]) {
    let n = arr.count
    var didSwap = false

    for i in 0 ..< n - 1 {
        didSwap = false
        for j in 0 ..< n - i - 1 {
            if arr[j] > arr[j + 1] {
                swap(arr: &arr, i: j, j: j + 1)
                didSwap = true
            }
        }
        if !didSwap {
            return
        }
    }
}
var arr = [1, 2, 3, 4, 5, 8, 7]
// var arr = [4, 3, 78, 1, 99, 23, 2, 78]
bubbleSort(arr: &arr)

print(arr)