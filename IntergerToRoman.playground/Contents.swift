import UIKit

func intToRoman(_ num: Int) -> String {
    var roman: String = ""
    var number = num
    while number >= 1000 {
        roman.append("M")
        number = number - 1000
    }
    
    while number >= 500 {
        roman.append("D")
        number = number - 500
    }
    
    while number >= 100 {
        roman.append("C")
        number = number - 100
    }
    
    while number >= 50 {
        roman.append("L")
        number = number - 50
    }
    
    while number >= 10 {
        roman.append("X")
        number = number - 10
    }
    
    while number >= 5 {
        roman.append("V")
        number = number - 5
    }
    
    while number > 0 {
        roman.append("I")
        number = number - 1
    }
    
    roman = roman.replacingOccurrences(of: "DCCCC", with: "CM").replacingOccurrences(of: "CCCC", with: "CD").replacingOccurrences(of: "CCCC", with: "CD").replacingOccurrences(of: "LXXXX", with: "XC").replacingOccurrences(of: "XXXX", with: "XL").replacingOccurrences(of: "VIIII", with: "IX").replacingOccurrences(of: "IIII", with: "IV")
        
    return roman
}

intToRoman(4)
