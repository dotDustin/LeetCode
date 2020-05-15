import UIKit

func containsDuplicate(_ nums: [Int]) -> Bool {
    let noDuplicates = Array(Set(nums))
    if noDuplicates.count == nums.count {
        return false
    } else {
        return true
    }
    
}

let array = [1,1,1,3,3,4,3,2,4,2]

containsDuplicate(array)
