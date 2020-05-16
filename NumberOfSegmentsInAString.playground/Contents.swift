import UIKit

func countSegments(_ s: String) -> Int {
    
    var newString = s.trimmingCharacters(in: .whitespacesAndNewlines)
    newString = newString.replacingOccurrences(of: "[\\s\n\r\t]+", with: " ", options: .regularExpression, range: nil)
    
    var stringArray = newString.components(separatedBy: .whitespacesAndNewlines)
    
    if stringArray.contains("") {
        return 0
    } else {
        return stringArray.count
    }
    
}

countSegments("Hello, my name is John")
countSegments("")

