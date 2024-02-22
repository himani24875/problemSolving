import Foundation

func mergeSort(arr: inout [Int], start: Int, end: Int) {
    let mid = (start + end) / 2
    if start >= end {
        return
    }
    mergeSort(arr: &arr, start: start, end: mid)
    mergeSort(arr: &arr, start: mid + 1, end: end)

    merge(arr: &arr, start: start, mid: mid, end: end)
}

func merge(arr: inout [Int], start: Int, mid: Int, end: Int) {
    var left = start
    var right = mid + 1

    var temp = [Int]()

    while(left <= mid && right <= end) {
        if arr[left] <= arr[right] {
            temp.append(arr[left])
            left += 1
        } else {
            temp.append(arr[right])
            right += 1
        }
    }

    while left <= mid {
        temp.append(arr[left])
        left += 1
    }

    while right <= end {
        temp.append(arr[right])
        right += 1
    }
    for i in start...end {
        arr[i] = temp[i - start]
    }
}

func sort(arr: inout [Int]) {
    mergeSort(arr: &arr, start: 0, end: arr.count - 1)
}

var arr = [4, 3, 78, 1, 99, 23, 2, 78]
sort(arr: &arr)
print(arr)