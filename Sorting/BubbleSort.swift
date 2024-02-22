import Foundation

/*Bubble sort for Integers*/
// func swap(arr: inout [Int], i: Int, j: Int) {
//     let temp = arr[i]
//     arr[i] = arr[j]
//     arr[j] = temp
// }

// func bubbleSort(arr: inout [Int]) {
//     let n = arr.count
//     var didSwap = false

//     for i in 0 ..< n - 1 {
//         didSwap = false
//         for j in 0 ..< n - i - 1 {
//             if arr[j] > arr[j + 1] {
//                 swap(arr: &arr, i: j, j: j + 1)
//                 didSwap = true
//             }
//         }
//         if !didSwap {
//             return
//         }
//     }
// }

/*Bubble sort for Characters*/
// func swap(arr: inout [Character], i: Int, j: Int) {
//     let temp = arr[i]
//     arr[i] = arr[j]
//     arr[j] = temp
// }

// func bubbleSort(str: inout String) {
//     let n = str.count
//     var didSwap = false

//     var myArr = Array(str)

//     for i in 0 ..< n - 1 {
//         didSwap = false
//         for j in 0 ..< n - i - 1 {
//             if myArr[j] > myArr[j + 1] {
//                 swap(arr: &myArr, i: j, j: j + 1)

//                 print(myArr)
//                 didSwap = true
//             }
//         }
//         if !didSwap {
//             return
//         }
//     }
//     str = String(myArr)
// }
// var arr = [1, 2, 3, 4, 5, 8, 7]
// var arr = [4, 3, 78, 1, 99, 23, 2, 78]
// var myStr = "fedcba"
// bubbleSort(str: &myStr)

// print(myStr)


/*Bubble sort with Recursion*/

func swap(arr: inout [Int], i: Int, j: Int) {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

func bubbleSort(arr: inout [Int], j: Int) {
    if j == 1 { return }

    var didSwap = false
    for i in 0 ..< j - 1 {
        if arr[i] > arr[i + 1] {
            swap(arr: &arr, i: i, j: i + 1)
            didSwap = true
        }
    }
    print(arr)
    if !didSwap { return }
    bubbleSort(arr: &arr, j: j - 1)
}

func bubbleSort(arr: inout [Int]) {
    bubbleSort(arr: &arr, j: arr.count)
}

var arr = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
bubbleSort(arr: &arr)

// print(arr)