import UIKit

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var x = nums
    var removalArray: [Int] = []
    for i in x {
        print("i is \(i)")
        
        if !removalArray.contains(x[i]) {
            print("removal array before \(removalArray)")
            removalArray.insert(x[i], at: 0)
            print(removalArray)
        }
        /*if i >= 2 && x[i] == x[i-1] {
                print("x[i] is \(x[i])")
                print("x[i-1] is \(x[i-1])")
                if !removalArray.contains(x[i]) {
                    //print("x[i] is \(x[i])")
                    removalArray.append(x[i])
                    print(removalArray)
                    //removalArray.insert(x[1], at: 0)
                }
            }*/
        }
    /*
    removalArray.reverse()
    for i in removalArray {
        x.remove(at: removalArray[i])
    }*/
        return removalArray.count
}

var nums = [0,0,1,1,1,2,2,3,3,4]
//var nums = [1,1,2]
removeDuplicates(&nums)
