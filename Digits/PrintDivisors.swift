import Foundation 

func printDivisors(n: Int) {
    for i in 1 ..< n where ((i * i) < n) {
        if n % i == 0 {
            print(i)

            if (n / i) != i {
                print(n / i)
            }
        }
    }
}

printDivisors(n: 12)