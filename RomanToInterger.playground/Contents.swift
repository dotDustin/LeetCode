import Foundation

let romanDict = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
let s = "MCMXVII"
let numbersAsSingleStrings = s.components(separatedBy: "")
print(numbersAsSingleStrings)
var numbersInArray: [String] = []

func romanToInt(_ s: String) -> Int {
//    var numbersAsChars = Array(s)
    let numbersAsSingleStrings = s.components(separatedBy: "")
    print(numbersAsSingleStrings)
    var numbersInArray: [String] = []
    
    /*
    for i in numbersAsSingleStrings {
        numbersInArray.append(i)
        print(numbersInArray)
    }*/
    
    /*for (key, value) in numbersAsSingleStrings {
        numbersInArray.append(value)
        print(numbersInArray)
    }*/
    
    /*while numbersAsSingleStrings.count > 0 {
        
    }*/
    
    /*for i in numbersAsSingleStrings {
        
    }*/
    
    
    
    return 1
}

//romanToInt("MCMXVII")

