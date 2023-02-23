//
//  SwiftUIView.swift
//  SwiftEnum
//

import SwiftUI

enum Planets {
  case earth
  case mercury
  case jupider
  case venus
  case saturn
  case uranus
  case neptune
}

func distanceFromSum(planet: Planets) -> String {
  switch planet {
    
  case .earth:
    return "150 km"
  case .mercury:
    return "69.728 million km"
  case .jupider:
    return "740.72 million km"
  case .venus:
    return "108.27 million km"
  case .saturn:
    return "1.4677 billion km"
  case .uranus:
    return "2.9405 billion km"
  case .neptune:
    return "4.4735 billion km"
  }
}

struct PlanetFromSun: View {
  @State private var planet: Planets = .earth
  var body: some View {
    Text("The distance from the sun")
    Text(distanceFromSum(planet: planet))
    List {
      Picker("Planets", selection: $planet) {
        Text("earth").tag(Planets.earth)
        Text("mercury").tag(Planets.mercury)
        Text("jupider").tag(Planets.jupider)
        Text("venus").tag(Planets.venus)
        Text("uranus").tag(Planets.uranus)
        Text("neptune").tag(Planets.neptune)
      }
    }
  }
}

struct PlanetFromSun_Previews: PreviewProvider {
  static var previews: some View {
    PlanetFromSun()
  }
}
