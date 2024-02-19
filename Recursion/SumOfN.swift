import Foundation

/* Parameterized way */
// func sumWithRecursion(i: Int, sum: Int) {
//     if i < 1 {
//         print(sum)
//         return
//     }
//     sumWithRecursion(i: i - 1, sum: sum + i)
// }

/* Functional approach */

func sumWithRecursionWithReturn(n: Int) -> Int {
    if n == 0 {
        return 0
    }
    return n + sumWithRecursionWithReturn(n: n - 1)
}

func sum(n: Int) -> Int {
    sumWithRecursionWithReturn(n: n)
}

print(sum(n: 10))