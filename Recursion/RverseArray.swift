import Foundation

/* Reverse of an array using for loop */
// func reverseArray(arr: inout [Int]) {
//     var i = 0
//     var j = arr.count - 1

//     while i < j {
        // var temp = arr[i]
        // arr[i] = arr[j]
        // arr[j] = temp

//         i += 1
//         j -= 1
//     }
// }


/* Reverse of an array using recursion using 2 pointers */
// func reverseUsingRecursion(arr: inout [Int], i: Int, j: Int) {
//     if i >= j {
//         return
//     }
//     swap(arr: &arr, i: i, j: j)
//     reverseUsingRecursion(arr: &arr, i: i + 1, j: j - 1)
// }

/* Reverse of an array using recursion using 1 pointer */
func reverseUsingRecursion(arr: inout [Int], i: Int, n: Int) {
    if i >= (n / 2) {
        return
    }
    swap(arr: &arr, i: i, j: (n - i - 1))
    reverseUsingRecursion(arr: &arr, i: i + 1, n: n)
}

func swap(arr: inout [Int], i: Int, j: Int) {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

var arr = [1, 2, 3, 4, 5, 6, 7]
reverseUsingRecursion(arr: &arr, i: 0, n: arr.count)

print(arr)

