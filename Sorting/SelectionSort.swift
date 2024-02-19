import Foundation

func swap(arr: inout [Int], i: Int, j: Int) {
    var temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

func selectionSort(arr: inout [Int]) {
    var n = arr.count

    for i in 0 ... n - 2 {
        var minj = i
        for j in i ... n - 1 {
            if arr[j] < arr[minj] {
                minj = j
            }
        }
        swap(arr: &arr, i: i, j: minj)
    }
}

var arr = [4, 3, 78, 1, 99, 23, 2, 78]
selectionSort(arr: &arr)

print(arr)