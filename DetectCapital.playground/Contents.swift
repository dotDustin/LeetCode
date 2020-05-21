import UIKit

func detectCapitalUse(_ word: String) -> Bool {
    
    let wordArray = word.map( { String($0) })
    
    //let firstLetter = word.first
    let firstUpper = wordArray[0]
    let restOfWord = word.dropFirst()
    let restOfWordArray = restOfWord.map( { String($0) })
    
    if Character(firstUpper).isUppercase {
        var firstUpper: Bool?
        var currentUpper: Bool?
        for letter in restOfWord {
            if letter.isUppercase {
                currentUpper = true
                if firstUpper == true || firstUpper == false {
                    if currentUpper != firstUpper {
                        return false
                    }
                }
                if currentUpper == firstUpper {
                    
                }
            } else {
                currentUpper = false
            }
        }
    }
    
    return true
}

detectCapitalUse("Stuff")
