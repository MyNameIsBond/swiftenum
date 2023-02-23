//
//  Temperature.swift
//  SwiftEnum
//

import SwiftUI

enum Temperatures {
  case cold
  case warm
  case hot
}

func tempCalc(temp: Int) -> Temperatures {
  
  switch temp {
  case -10...0:
    return Temperatures.cold
    
  case 0..<10:
    return Temperatures.warm
    
  case 10..<20:
    return Temperatures.hot
  default:
    return Temperatures.hot
  }
  
}

struct Temperature: View {
  @State var text = String()
  @State var anotherText: Temperatures = .cold
  var body: some View {
    Text("Give me a temperature")
    TextField("Give me an Int", text: $text)
    Button("Submit") {
      anotherText = tempCalc(temp: Int(text)!)
      print(anotherText)
    }
  }
}

struct Temperature_Previews: PreviewProvider {
  static var previews: some View {
    Temperature()
  }
}
