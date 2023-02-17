//
//  ShapeArea.swift
//  SwiftEnum
//

import SwiftUI

enum Shapes: Hashable {
  case triangle(base: Double, height: Double)
  case circle(radius: Double)
  case rectangle(length: Double, width: Double)
}

func findArea(shape: Shapes) -> Double {
  switch shape {
  case .triangle(let base, let height):
    return Double((base * height) / 2)
  case .circle(let radius):
    return Double(Int(Double.pi * radius)^2)
  case .rectangle(let length, let width):
    return Double(length * width)
  }
}

struct ShapeArea: View {
  @State var selectedShape: Shapes = .rectangle(length: 15, width: 15)
    var body: some View {
      Text(String(findArea(shape: selectedShape)))
      Picker("Shape", selection: $selectedShape) {
        Text("Triangle").tag(Shapes.triangle(base: 12.0, height: 12.0))
        Text("circle").tag(Shapes.circle(radius: 12.0))
        Text("rectangle").tag(Shapes.rectangle(length: 15, width: 15))
      }
    }
}

struct ShapeArea_Previews: PreviewProvider {
    static var previews: some View {
        ShapeArea()
    }
}
