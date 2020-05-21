import UIKit

func detectCapitalUse(_ word: String) -> Bool {
    
    let wordArray = word.map( { String($0) })
    
    let firstUpper = wordArray[0]
    let restOfWord = word.dropFirst()
    
    let restOfWordArray = restOfWord.map( { String($0) })
    
    if Character(firstUpper).isUppercase {
        var firstUpper: Bool?
        var currentUpper: Bool?
        
        for letter in restOfWordArray {
            if Character(letter).isUppercase {
                currentUpper = true
                if firstUpper == false {
                    return false
                } else if firstUpper == nil {
                    firstUpper = currentUpper
                }
            } else {
                currentUpper = false
                if firstUpper == true  {
                    return false
                } else if firstUpper == nil {
                    firstUpper = currentUpper
                }
            }
        }
    } else { // first letter is lowercase
        for letter in restOfWordArray {
            if Character(letter).isUppercase {
                return false
            }
        }
    }
    
    return true
}

detectCapitalUse("Bye")
