//
//  DaysOfTheWeek.swift
//  SwiftEnum
//

import SwiftUI

enum  Days {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
  
  func message {
    switch Days {
    case .monday:
      return "Have a nice monday"
      
    default:
      return nil:
    }
  }
}

struct DaysOfTheWeek: View {
    @State private var selectedFlavor: Days = .monday
    var body: some View {
        Text("Give me a days of the week")
      List {
          Picker("Flavor", selection: $selectedFlavor) {
              Text("monday").tag(Days.monday)
              Text("tuesday").tag(Days.tuesday)
              Text("wednesday").tag(Days.wednesday)
            Text("thursday").tag(Days.thursday)
            Text("friday").tag(Days.friday)
            Text("saturday").tag(Days.saturday)
            Text("sunday").tag(Days.sunday)
          }
      }
      
      Text(Days.message($selectedFlavor))
    }
}

struct DaysOfTheWeek_Previews: PreviewProvider {
    static var previews: some View {
        DaysOfTheWeek()
    }
}
