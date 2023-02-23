
import SwiftUI

enum Cards {
  case diamonds, clubs, hearts, spades
}

func cardSuits(card: Cards) -> String  {
  switch card {
  case .diamonds:
    return "♦️"
  case .clubs:
    return "♣️"
  case .hearts:
    return "♥️"
  case .spades:
    return "♠️"
  }
}

struct PlayingCards: View {
  @State private var card: Cards = .diamonds
  var body: some View {
    Text("Give me a Card Suit")
    Picker("Pick a Card Suit", selection: $card) {
      Text("Pick diamonds").tag(Cards.diamonds)
      Text("Pick clubs").tag(Cards.clubs)
      Text("Pick hearts").tag(Cards.hearts)
      Text("Pick spades").tag(Cards.spades)
    }
  }
}

struct PlayingCards_Previews: PreviewProvider {
  static var previews: some View {
    PlayingCards()
  }
}
