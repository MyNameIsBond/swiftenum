
import SwiftUI

enum Currency {
  case usd
  case eur
  case gbp
  case jpy
  case cad
  
  var value -> Double {
    switch self {
      
    }
  }
}

struct Currencies: View {
    var body: some View {
        Text("Currencies")
    }
}

struct Currencies_Previews: PreviewProvider {
    static var previews: some View {
        Currencies()
    }
}
