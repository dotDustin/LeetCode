import UIKit

func isPalindrome(_ s: String) -> Bool {
    let lowercasedString = s.lowercased()
    let filteredString = lowercasedString.filter("abcdefghijklmnopqrstuvwxyz1234567890".contains)

    var palindromeArray = Array(filteredString)
    
    while palindromeArray.count > 1 {
        if palindromeArray.first == palindromeArray.last {
            palindromeArray.removeFirst()
            palindromeArray.removeLast()
        } else {
            return false
        }
    }

    return true
}

isPalindrome("racecar")
