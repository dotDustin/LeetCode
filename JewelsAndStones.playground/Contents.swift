import UIKit

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    
    var jewels = String(S.filter { J.contains($0) })
   
    return jewels.count
}

numJewelsInStones("abcDEF", "AbcdEF")
