
func swap(arr: inout [Int], i: Int, j: Int) {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}
/* Ascending order */
// func partition(arr: inout [Int], low: Int, high: Int) -> Int {
//     let pivot = arr[low]
//     var i = low
//     var j  = high

//     while i < j {
//         while arr[i] <= pivot && i < high {
//             i += 1
//         }

//         print("i", i)

//         while arr[j] > pivot && j > low {
//             j -= 1
//         }

//         print("j", j)

//         if i < j {
//             swap(arr: &arr, i: i, j: j)
//         }
//     }
//     print(arr)
//     swap(arr: &arr, i: low, j: j)
//     print("after final swap")
//     print(arr)
//     return j
// }


/* Descending order */
func partition(arr: inout [Int], low: Int, high: Int) -> Int {
    let pivot = arr[low]
    var i = low
    var j  = high

    while i < j {
        while arr[i] >= pivot && i < high { // change in condition here
            i += 1
        }

        print("i", i)

        while arr[j] < pivot && j > low { // change in condition here
            j -= 1
        }

        print("j", j)

        if i < j {
            swap(arr: &arr, i: i, j: j)
        }
    }
    print(arr)
    swap(arr: &arr, i: low, j: j)
    print("after final swap")
    print(arr)
    return j
}

func quickSort(arr: inout [Int], low: Int, high: Int) {
    if low < high { 
        let partitionIndex = partition(arr: &arr, low: low, high: high)

        print("partitionIndex", partitionIndex)

        quickSort(arr: &arr, low: low, high: partitionIndex - 1)
        quickSort(arr: &arr, low: partitionIndex + 1, high: high)
    }
}

func quickSort(arr: inout [Int]) {
    quickSort(arr: &arr, low: 0, high: arr.count - 1)
}

var arr = [1, 2, 3, 4, 5]

quickSort(arr: &arr)
