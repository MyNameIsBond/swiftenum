
import SwiftUI

enum CardSuit: String, CaseIterable  {
    case club = "♣️"
    case diamond = "♦️"
    case heart = "♥️"
    case spade = "♠️"
}

enum CardNumber: CaseIterable {
  case ace
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king
  
  var value: Int {
    switch self {
      case .ace:
        return 1
      case .two:
        return 2
      case .three:
        return 3
      case .four:
        return 4
      case .five:
        return 5
      case .six:
        return 6
      case .seven:
        return 7
      case .eight:
        return 8
      case .nine:
        return 9
      case .jack, .queen, .king, .ten:
        return 10
    }
  }
}

struct Card {
  let suit: CardSuit
  let number: CardNumber
}

func deck() -> [Card] {
  var myDeck: [Card] = []
  for suit in CardSuit.allCases {
    for card in CardNumber.allCases {
      myDeck.append(.init(suit: suit, number: card))
    }
  }
  return myDeck
}

struct Deck: View {
    
  @State var myDeck: [Card] = deck()
  
    var body: some View {
        Text("Playing Cards")
      Button("See my Deck") {
        print(myDeck)
        myDeck.removeAll()
      }
    }
}

struct Deck_Previews: PreviewProvider {
    static var previews: some View {
      Deck()
    }
}
