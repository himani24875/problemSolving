import Foundation

func swap(arr: inout [Int], i: Int, j: Int) {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

// func insertionSort(arr: inout [Int]) {
//     let n = arr.count

//     for i in 1 ..< n {
//         var j = i

//         while j > 0 && arr[j] < arr[j - 1] {
//             swap(arr: &arr, i: j, j: j - 1)
//             j -= 1
//         }
//     }
// }
// var arr = [1, 2, 3, 4, 5, 8, 7]



/*Insertion sort with recusrion*/

func insertionSort(arr: inout [Int], i: Int) {
    if i == arr.count { return }
    var j = i
    while j > 0 && arr[j] < arr[j - 1] {
        swap(arr: &arr, i: j, j: j - 1)
        j -= 1
    }

    print(arr)
    insertionSort(arr: &arr, i: i + 1)
}

func insertionSort(arr: inout [Int]) {
    insertionSort(arr: &arr, i: 0)
}

var arr = [9, 8, 7, 6, 5, 4, 3, 2, 1]
insertionSort(arr: &arr)

// print(arr)