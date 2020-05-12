import UIKit

    func isPalindrome(_ x: Int) -> Bool {
        let number = String(x)
        var palindromeArray = Array(number)
            
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
    
    let test = 31213
    
   isPalindrome(test)
    
    

