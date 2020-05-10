import UIKit

let test: Int = 1711070058

func numberToWords(_ num: Int) -> String {
      let number = String(num)
      var digits = Array(number)
      
      var newerDigits = digits.compactMap{ $0.wholeNumberValue }
      
      var numberToEnglish: [String] = []
      
      //split into groups of three
      var billions: [Int] = []
      var millions: [Int] = []
      var thousands: [Int] = []
      var hundreds: [Int] = []
      
      for characters in newerDigits.reversed() {
          if hundreds.count < 3 {
              hundreds.insert(characters, at: 0)
              newerDigits.remove(at: digits.startIndex)
          } else if thousands.count < 3 {
              thousands.insert(characters, at: 0)
              newerDigits.remove(at: digits.startIndex)
          } else if millions.count < 3 {
              millions.insert(characters, at: 0)
              newerDigits.remove(at: digits.startIndex)
          } else if billions.count < 3 {
              billions.insert(characters, at: 0)
              newerDigits.remove(at: digits.startIndex)
          }
      }
      
      
      /// BILLIONS
      if billions.count > 0 {
          numberToEnglish.append(singleDigit(num: billions[0]))
          numberToEnglish.append("Billion")
      }
      
      /// MILLIONS
      if millions.count == 3 {
          // first digit is zero, but must be billion+
          if millions[0] == 0 {
              if millions[1] == 0 && millions[2] == 0 {
                  //all zeros
              } else if millions[1] == 1 && millions[2] != 0  {
                  let myString = String(millions[1]) + String(millions[2])
                  let stringToNum = Int(myString)
                  numberToEnglish.append(teens(num: stringToNum!))
                  numberToEnglish.append("Million")
              } else if millions[1] == 1 && millions[2] == 0 {
                  numberToEnglish.append("Ten Million")
              } else if millions[1] != 0 && millions[2] == 0 {
                  numberToEnglish.append(middleDigit(num: millions[1]))
                  numberToEnglish.append("Million")
              } else if millions[1] != 0 && millions[2] != 0 {
                  numberToEnglish.append(middleDigit(num: millions[1]))
                  numberToEnglish.append(singleDigit(num: millions[2]))
                  numberToEnglish.append("Million")
              } else if millions[1] == 0 && millions[2] != 0 {
                  numberToEnglish.append(singleDigit(num: millions[2]))
                  numberToEnglish.append("Million")
              }
           
          // first digit is not zero 1 711 070 058
          } else if millions[0] != 0 && millions[1] == 0 && millions[2] == 0 {
              numberToEnglish.append(singleDigit(num: millions[0]))
              numberToEnglish.append("Hundred Million")
          } else if millions[0] != 0 && millions[1] == 0 && millions[2] != 0 {
              numberToEnglish.append(singleDigit(num: millions[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(singleDigit(num: millions[2]))
              numberToEnglish.append("Million")
          } else if millions[0] != 0 && millions[1] == 1 && millions[2] != 0 {
              numberToEnglish.append(singleDigit(num: millions[0]))
              numberToEnglish.append("Hundred")
              let myString = String(millions[1]) + String(millions[2])
              let stringToNum = Int(myString)
              numberToEnglish.append(teens(num: stringToNum!))
              numberToEnglish.append("Million")
          } else if millions[0] != 0 && millions[1] != 0 && millions[2] != 0 {
              numberToEnglish.append(singleDigit(num: millions[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(middleDigit(num: millions[1]))
              numberToEnglish.append(singleDigit(num: millions[2]))
              numberToEnglish.append("Million")
          } else if millions[0] != 0 && millions[1] != 0 && millions[2] == 0 {
              numberToEnglish.append(singleDigit(num: millions[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(middleDigit(num: millions[1]))
              numberToEnglish.append("Million")
          }
      
      } else if millions.count == 2 {
          if millions[0] != 0 && millions[1] == 0 {
              numberToEnglish.append(middleDigit(num: millions[0]))
              numberToEnglish.append("Million")
          } else if millions[0] == 1 && millions[1] != 0 {
              let myString = String(millions[0]) + String(millions[1])
              let stringToNum = Int(myString)
              numberToEnglish.append(teens(num: stringToNum!))
              numberToEnglish.append("Million")
          } else if millions[0] != 0 && millions[1] != 0 {
              numberToEnglish.append(middleDigit(num: millions[0]))
              numberToEnglish.append(singleDigit(num: millions[1]))
              numberToEnglish.append("Million")
          }
          
      } else if millions.count == 1 {
          numberToEnglish.append(singleDigit(num: millions[0]))
          numberToEnglish.append("Million")
      }
      
      /// THOUSANDS
      if thousands.count == 3 {
          // first digit is zero, but must be million+
          if thousands[0] == 0 {
              if thousands[1] == 0 && thousands[2] == 0 {
                  //all zeros
              } else if thousands[1] == 1 && thousands[2] != 0 {
                  let myString = String(thousands[1]) + String(thousands[2])
                  let stringToNum = Int(myString)
                  numberToEnglish.append(teens(num: stringToNum!))
                  numberToEnglish.append("Thousand")
              } else if thousands[1] == 1 && thousands[2] == 0 {
                  numberToEnglish.append("Ten Thousand")
              } else if thousands[1] != 0 && thousands[2] == 0 {
                  numberToEnglish.append(middleDigit(num: thousands[1]))
                  numberToEnglish.append("Thousand")
              
              } else if thousands[1] != 0 && thousands[2] != 0 {
                  numberToEnglish.append(middleDigit(num: thousands[1]))
                  numberToEnglish.append(singleDigit(num: thousands[2]))
                  numberToEnglish.append("Thousand")
              } else if thousands[1] == 0 && thousands[2] != 0 {
                  numberToEnglish.append(singleDigit(num: thousands[2]))
                  numberToEnglish.append("Thousand")
              }
           
          // first digit is not zero
          } else if thousands[0] != 0 && thousands[1] == 0 && thousands[2] == 0 {
              numberToEnglish.append(singleDigit(num: thousands[0]))
              numberToEnglish.append("Hundred Thousand")
          } else if thousands[0] != 0 && thousands[1] == 0 && thousands[2] != 0 {
              numberToEnglish.append(singleDigit(num: thousands[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(singleDigit(num: thousands[2]))
              numberToEnglish.append("Thousand")
          } else if thousands[0] != 0 && thousands[1] == 1 && thousands[2] != 0 {
              numberToEnglish.append(singleDigit(num: thousands[0]))
              numberToEnglish.append("Hundred")
              let myString = String(thousands[1]) + String(thousands[2])
              let stringToNum = Int(myString)
              numberToEnglish.append(teens(num: stringToNum!))
              numberToEnglish.append("Thousand")
          } else if thousands[0] != 0 && thousands[1] != 0 && thousands[2] != 0 {
              numberToEnglish.append(singleDigit(num: thousands[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(middleDigit(num: thousands[1]))
              numberToEnglish.append(singleDigit(num: thousands[2]))
              numberToEnglish.append("Thousand")
          } else if thousands[0] != 0 && thousands[1] != 0 && thousands[2] == 0 {
              numberToEnglish.append(singleDigit(num: thousands[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(middleDigit(num: thousands[1]))
              numberToEnglish.append("Thousand")
          }
      
      } else if thousands.count == 2 {
          if thousands[0] != 0 && thousands[1] == 0 {
              numberToEnglish.append(middleDigit(num: thousands[0]))
              numberToEnglish.append("Thousand")
          } else if thousands[0] == 1 && thousands[1] != 0 {
              let myString = String(thousands[0]) + String(thousands[1])
              let stringToNum = Int(myString)
              numberToEnglish.append(teens(num: stringToNum!))
              numberToEnglish.append("Thousand")
          } else if thousands[0] != 0 && thousands[1] != 0 {
              numberToEnglish.append(middleDigit(num: thousands[0]))
              numberToEnglish.append(singleDigit(num: thousands[1]))
              numberToEnglish.append("Thousand")
          }
          
      } else if thousands.count == 1 {
          numberToEnglish.append(singleDigit(num: thousands[0]))
          numberToEnglish.append("Thousand")
      }
      
      /// HUNDREDS
      if hundreds.count == 3 {
          // first digit is zero, but must be thousands
          if hundreds[0] == 0 {
              if hundreds[1] == 0 && hundreds[2] == 0 {
                  //all zeros
              } else if hundreds[1] == 1 && hundreds[2] != 0 {
                  let myString = String(hundreds[1]) + String(hundreds[2])
                  print(myString)
                  let stringToNum = Int(myString)
                  numberToEnglish.append(teens(num: stringToNum!))
              
              } else if hundreds[1] == 1 && hundreds[2] == 0 {
                  numberToEnglish.append("Ten")
                  
              } else if hundreds[1] != 0 && hundreds[2] == 0 {
                  numberToEnglish.append(middleDigit(num: hundreds[1]))
                  
              } else if hundreds[1] != 0 && hundreds[2] != 0 {
                  numberToEnglish.append(middleDigit(num: hundreds[1]))
                  numberToEnglish.append(singleDigit(num: hundreds[2]))
              } else if hundreds[1] == 0 && hundreds[2] != 0 {
                  numberToEnglish.append(singleDigit(num: hundreds[2]))
              }
           
          // first digit is not zero
          } else if hundreds[0] != 0 && hundreds[1] == 0 && hundreds[2] == 0 {
              numberToEnglish.append(singleDigit(num: hundreds[0]))
              numberToEnglish.append("Hundred")
          } else if hundreds[0] != 0 && hundreds[1] == 0 && hundreds[2] != 0 {
              numberToEnglish.append(singleDigit(num: hundreds[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(singleDigit(num: hundreds[2]))
          } else if hundreds[0] != 0 && hundreds[1] == 1 && hundreds[2] != 0 {
              numberToEnglish.append(singleDigit(num: hundreds[0]))
              numberToEnglish.append("Hundred")
              let myString = String(hundreds[1]) + String(hundreds[2])
              let stringToNum = Int(myString)
              numberToEnglish.append(teens(num: stringToNum!))
          } else if hundreds[0] != 0 && hundreds[1] != 0 && hundreds[2] != 0 {
              numberToEnglish.append(singleDigit(num: hundreds[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(middleDigit(num: hundreds[1]))
              numberToEnglish.append(singleDigit(num: hundreds[2]))

          } else if hundreds[0] != 0 && hundreds[1] != 0 && hundreds[2] == 0 {
              numberToEnglish.append(singleDigit(num: hundreds[0]))
              numberToEnglish.append("Hundred")
              numberToEnglish.append(middleDigit(num: hundreds[1]))
          }
      
      } else if hundreds.count == 2 {
          if hundreds[0] != 0 && hundreds[1] == 0 {
              numberToEnglish.append(middleDigit(num: hundreds[0]))
          } else if hundreds[0] == 1 && hundreds[1] != 0 {
              let myString = String(hundreds[0]) + String(hundreds[1])
              let stringToNum = Int(myString)
              numberToEnglish.append(teens(num: stringToNum!))
          } else if hundreds[0] != 0 && hundreds[1] != 0 {
              numberToEnglish.append(middleDigit(num: hundreds[0]))
              numberToEnglish.append(singleDigit(num: hundreds[1]))
          }
          
      } else if hundreds.count == 1 {
          if billions.count == 0 && millions.count == 0 && thousands.count == 0 && hundreds[0] == 0 {
              numberToEnglish.append("Zero")
          } else {
              numberToEnglish.append(singleDigit(num: hundreds[0]))
          }
          
      }
      
      var fullString: String = ""
      
      if numberToEnglish.count == 1 {
          fullString = numberToEnglish[0]
      } else {
          fullString = numberToEnglish.joined(separator: " ")
      }
      
      print(fullString)
      
      return fullString
  }

  func teens(num: Int) -> String {
      var teenString: String = ""
      if num == 11 {
          teenString = "Eleven"
      } else if num == 12 {
          teenString = "Twelve"
      } else if num == 13 {
          teenString = "Thirteen"
      } else if num == 14 {
          teenString = "Fourteen"
      } else if num == 15 {
          teenString = "Fifteen"
      } else if num == 16 {
          teenString = "Sixteen"
      } else if num == 17 {
          teenString = "Seventeen"
      } else if num == 18 {
          teenString = "Eighteen"
      } else if num == 19 {
          teenString = "Nineteen"
      }
      return teenString
  }


  func middleDigit(num: Int) -> String {
      var middleString: String = ""
      if num != 0 {
          if num == 1 {
              middleString = "Ten"
          } else if num == 2 {
              middleString = "Twenty"
          } else if num == 3 {
              middleString = "Thirty"
          } else if num == 4 {
              middleString = "Forty"
          } else if num == 5 {
              middleString = "Fifty"
          } else if num == 6 {
              middleString = "Sixty"
          } else if num == 7 {
              middleString = "Seventy"
          } else if num == 8 {
              middleString = "Eighty"
          } else if num == 9 {
              middleString = "Ninety"
          }
      }
      return middleString
  }


  func singleDigit(num: Int) -> String {
      var singleString: String = ""
      if num != 0 {
          if num == 1 {
              singleString = "One"
          } else if num == 2 {
              singleString = "Two"
          } else if num == 3 {
              singleString = "Three"
          } else if num == 4 {
              singleString = "Four"
          } else if num == 5 {
              singleString = "Five"
          } else if num == 6 {
              singleString = "Six"
          } else if num == 7 {
              singleString = "Seven"
          } else if num == 8 {
              singleString = "Eight"
          } else if num == 9 {
              singleString = "Nine"
          }
      }
      return singleString
  }


numberToWords(test)
