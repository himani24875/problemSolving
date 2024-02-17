import Foundation

func isArmstrong(n: Int) -> Bool {
    var copy = n
    var sum = 0

    while copy > 0 {
        var lastDigit = copy % 10
        copy = copy / 10
        sum += (lastDigit * lastDigit * lastDigit)
    }

    return n == sum
}

print(isArmstrong(n: 371))