import UIKit


func backspaceCompare(_ S: String, _ T: String) -> Bool {

    var sResult: [String.Element] = []
    var tResult: [String.Element] = []
    
    for (index, element) in S.enumerated() {
        if element != "#" {
            sResult.append(element)
        } else {
            if index != 0 && !sResult.isEmpty{
                sResult.removeLast()
            }
        }
    }
    
    for (index, element) in T.enumerated() {
        if element != "#" {
            tResult.append(element)
        } else {
            if index != 0 && !tResult.isEmpty {
                tResult.removeLast()
            }
        }
    }
        
    if sResult == tResult {
        return true
    }
    
    return false
}

backspaceCompare("ab#c", "ad#c")
backspaceCompare("ab##", "c#d#")
backspaceCompare("a##c", "#a#c")
backspaceCompare("a#c", "b")

