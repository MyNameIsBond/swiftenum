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
}

func weekdayMessage(day: Days) -> String {
  switch day {
  case .monday:
    return "Have a nice monday"
  case .tuesday:
    return "Have a nice tuesday"
  case .wednesday:
    return "Have a nice wednesday"
  case .thursday:
    return "Have a nice thursday"
  case .friday:
    return "Have a nice friday"
  case .saturday:
    return "Have a nice saturday"
  case .sunday:
    return "Have a nice sunday"
  }
}

struct DaysOfTheWeek: View {
    @State private var selectedFlavor: Days = .monday
    var body: some View {
      Text(weekdayMessage(day: selectedFlavor))
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
    }
}

struct DaysOfTheWeek_Previews: PreviewProvider {
    static var previews: some View {
        DaysOfTheWeek()
    }
}
