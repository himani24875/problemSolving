import Foundation

func swap(arr: inout [Int], i: Int, j: Int) {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

func insertionSort(arr: inout [Int]) {
    let n = arr.count

    for i in 1 ..< n {
        var j = i

        while j > 0 && arr[j] < arr[j - 1] {
            swap(arr: &arr, i: j, j: j - 1)
            j -= 1
        }
    }
}
// var arr = [1, 2, 3, 4, 5, 8, 7]

var arr = [4, 3, 78, 1, 99, 23, 2, 78]
insertionSort(arr: &arr)

print(arr)