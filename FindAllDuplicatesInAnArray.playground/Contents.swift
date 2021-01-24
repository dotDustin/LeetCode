import UIKit

func findDuplicates(_ nums: [Int]) -> [Int] {
    
    var duplicatesArray: [Int] = []
    var newNums = nums.sorted()
    
    while newNums.count > 1 {
        if newNums[0] == newNums[1] {
            duplicatesArray.append(newNums[0])
        }
        newNums.remove(at: 0)
    }
    
    return duplicatesArray
}

let array = [4,3,2,7,8,2,3,1]

findDuplicates(array)
