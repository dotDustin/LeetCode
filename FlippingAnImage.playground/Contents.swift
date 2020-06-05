import UIKit

func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    var newArray: [[Int]] = []
    for i in A {
        var newUnit = i
        newUnit.reverse()
        newArray.append(newUnit)
    }
    
    var newerArray: [[Int]] = []
    var invertArray: [Int] = []
    
    for i in newArray {
        invertArray = []
        for element in i {
            if element == 0 {
                invertArray.append(1)
            } else if element == 1 {
                invertArray.append(0)
            }
        }
        newerArray.append(invertArray)
    }
    
    return newerArray
}

flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]])
flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]])
flipAndInvertImage([])
