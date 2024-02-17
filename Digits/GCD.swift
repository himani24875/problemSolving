import Foundation

func findGCD(a: Int, b: Int) -> Int {
    var aCop = a
    var bCop = b
    while (aCop > 0 && bCop > 0) {
        if aCop > bCop {
            aCop = aCop % bCop
        } else {
            bCop = bCop % aCop
        }
    }

    return aCop == 0 ? bCop : aCop
}

print(findGCD(a: 9, b: 12))