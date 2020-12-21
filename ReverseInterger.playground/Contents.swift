import UIKit


    func newreverse(_ x: Int) -> Int {
        var remainder = Double(abs(x))
        var newNumber: Double = 0

        while remainder >= 10 {
            let y = Int(remainder) % 10
            newNumber = (newNumber / (0.1)) + Double(y)
            remainder = (remainder - Double(y)) / 10
        }
        
        newNumber = newNumber * 10 + remainder
        
        if x < 0 {
            newNumber = newNumber * -1
        }
        
        if Int(newNumber) > (1 << 31) || Int(newNumber) < -(1 << 31) {
            newNumber = 0
        }
        
        return Int(newNumber)
    }

newreverse(54321)
newreverse(-3782600)
newreverse(1534236469)

