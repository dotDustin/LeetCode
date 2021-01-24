import UIKit
import Foundation

public func solution(_ T : Int) -> String {
    
    let hours = T / 3600
    let minutes = T % 3600 / 60
    let seconds = T % 3600 % 60
    
    let timeInWords = String("\(hours)h\(minutes)m\(seconds)s")
    
    return timeInWords
}

solution(7865)

