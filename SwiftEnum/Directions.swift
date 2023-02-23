
import SwiftUI

enum Direction: String {
  case north, south, east, west
}

func oppositeDirection(from given: Direction ) -> String {
  
  switch given {
  case .north:
    return Direction.south.rawValue
  case .south:
    return Direction.north.rawValue
  case .east:
    return Direction.west.rawValue
  case .west:
    return Direction.east.rawValue
  }
}

struct Directions: View {
  var body: some View {
    Text("Directions")
  }
}

struct Directions_Previews: PreviewProvider {
  static var previews: some View {
    Directions()
  }
}
