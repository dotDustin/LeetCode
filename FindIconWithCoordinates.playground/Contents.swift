import UIKit

public func solution(_ A : inout [Int], _ B : inout [Int], _ X : Int, _ Y : Int) -> Int {
    
    let iconCoordinates = Array(zip(A, B))
    
    let cSquared = 400
    
    var counter = 0
    
    for i in iconCoordinates {
        let firstDistance = abs(i.0 - X)
        
        let secondDistance = abs(i.1 - Y)
        
        if firstDistance <= 20 && secondDistance <= 20 {
            let aSquaredBSquared = firstDistance*firstDistance + secondDistance*secondDistance
            if aSquaredBSquared <= cSquared {
                return counter
            }
        } else {
            counter += 1
        }
    }
    
    return -1
}

var A = [100, 200, 100]
var B = [50, 100, 100]
var X = 100
var Y = 100

solution(&A, &B, X, Y)
