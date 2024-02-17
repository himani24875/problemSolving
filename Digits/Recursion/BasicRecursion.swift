import Foundation

/* Print 1 -> N */
func display(i: Int, n: Int) {
    print(i)
    if i == n {
        return
    }
    display(i: i + 1, n: n)
}

func displayNumbers(n: Int) {
    display(i: 1, n: n)
}
// displayNumbers(n: 10)

/* Reverse N -> 1 */
func displayReverse(i: Int, n: Int) {
    if i < 1 {
        return
    }
    print(i)
    displayReverse(i: i - 1, n: n)
}

func displayNumbersInReverse(n: Int) {
    displayReverse(i: n, n: n)
}

//displayNumbersInReverse(n: 10)


/* Print 1 -> N with backtracking */

func displayByBackTracking(i: Int, n: Int) {
    if i < 1 {
        return
    }
    displayByBackTracking(i: i - 1, n: n)
    print(i)
}

func displayNumbersUsingBacktracking(n: Int) {
    displayByBackTracking(i: n, n: n)
}

// displayNumbersUsingBacktracking(n: 10)


/* Print N -> 1 reverse with backtracking */

func displayReverseByBackTracking(i: Int, n: Int) {
    if i > n {
        return
    }
    displayReverseByBackTracking(i: i + 1, n: n)
    print(i)
}

func displayNumbersInReverseUsingBacktracking(n: Int) {
    displayReverseByBackTracking(i: 0, n: n)
}

displayNumbersInReverseUsingBacktracking(n: 10)