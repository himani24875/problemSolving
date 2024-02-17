import Foundation

func reverse(n: Int) -> Int {
    var rev = 0
    var copy = n
    while(copy > 0) {
        let lastDigit = copy % 10
        copy = copy / 10
        rev = (rev * 10) + lastDigit
    }
    return rev
}

func isPalindrome(n: Int) -> Bool {
    return n == reverse(n: n)
}
print(isPalindrome(n: 111))