import UIKit

func rotateString(_ A: String, _ B: String) -> Bool {
    let count = A.count
    var newA = A
    
    if A.count != B.count {
        return false
    }
    
    if A == "" {
        return true
    }
    
    for i in 1...count {
        if newA == B {
            return true
        } else {
            let firstCharacter = newA[newA.startIndex]
            
            newA = String(newA.dropFirst())
            newA = newA.appending(String(firstCharacter))
        }
    }
    
    return false
}

rotateString("a", "")
rotateString("", "")
rotateString("abcde", "cdeab")
rotateString("abcde", "abced")

