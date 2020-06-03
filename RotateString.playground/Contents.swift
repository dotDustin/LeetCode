import UIKit

func rotateString(_ A: String, _ B: String) -> Bool {
    let count = A.count
    var newA = A
    
    let firstCharacter = newA[newA.startIndex]
    print(firstCharacter)
    newA = String(newA.dropFirst())
    newA = newA.appending(String(firstCharacter))
    print(newA)
    
    /*
    for i in 1...count {
        if newA == B {
            return true
        } else {
            let firstCharacter = newA.startIndex
            newA = String(newA.removeFirst())
            print(newA)
        }
    }*/
    
    return false
}

rotateString("abcde", "cdeab")

