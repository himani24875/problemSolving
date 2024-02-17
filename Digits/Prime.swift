import Foundation

func isPrime(n: Int) -> Bool {
    for i in 2 ..< n where (i * i < n) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

print(isPrime(n: 12))