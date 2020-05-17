import UIKit

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var currentOnes: Int = 0
    var consecutiveOnes: Int = 0
    
    for num in nums {
        if num == 1 {
            currentOnes += 1
        } else {
            if currentOnes >= consecutiveOnes {
                consecutiveOnes = currentOnes
            }
            currentOnes = 0
        }
    }
    if currentOnes > consecutiveOnes {
        consecutiveOnes = currentOnes
    }
        
    return consecutiveOnes
}

findMaxConsecutiveOnes([0,1,0,1,1,1,1,0])
