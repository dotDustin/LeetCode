import UIKit

func reverseWords(_ s: String) -> String {

    var stringArray = s.components(separatedBy: " ")
    
    var reverseString: String = ""
    for string in stringArray {
        if string != "" {
            let newString = string.trimmingCharacters(in: .whitespaces)
            reverseString = newString + " " + reverseString
        }
    }
    
    return reverseString.trimmingCharacters(in: .whitespaces)
}

reverseWords("a good   example")
