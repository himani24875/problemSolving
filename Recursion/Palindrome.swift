import Foundation

//https://leetcode.com/problems/valid-palindrome/

class Solution {
    func checkPalindrome(arr: [Character], i: Int, n: Int) -> Bool {
        if n == 1 {
            return true
        }
        if i >= (n / 2) {
            return true
        }
        if arr[i] != arr[n - i - 1] {
            return false
        }
        return checkPalindrome(arr: arr, i: i + 1, n: n)
    }

    func isPalindrome(_ s: String) -> Bool {
        let pattern = "[^a-zA-Z0-9]"
        let regex = try! NSRegularExpression(pattern: pattern)

        let modifiedString = regex.stringByReplacingMatches(
            in: s, 
            options: [], 
            range: NSRange(location: 0, length: s.utf16.count), 
            withTemplate: ""
        ).lowercased()
        print(modifiedString)
        let arr = Array(modifiedString)
        return checkPalindrome(arr: arr, i: 0, n: arr.count)
    }
}

let sol = Solution()
print(sol.isPalindrome("a."))