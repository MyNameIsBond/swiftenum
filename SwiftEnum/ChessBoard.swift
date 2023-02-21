
import SwiftUI

enum Pieces {
  case king, queen, bishop, knight, rook, pawn
}

enum Squares: CaseIterable {
  case a,b,c,d,e,f,g,h
}

enum PlauersTurn {
  case white, black
}

enum Sqaure {
  case Pieces
  case empty
}


struct ChessBoard: View {
  
  var body: some View {
    HStack(spacing: 3) {
      ForEach(0..<8) { r in
        VStack(spacing: 3) {
          ForEach(0..<8) { c in
            ZStack{
              Rectangle().fill(((r+c)%2 == 0) ? .brown : .black)
                .frame(width: 80, height: 80)
            }.onTapGesture {
              print(r,c)
            }
          }
          
        }
      }
    }
  }
}

struct ChessBoard_Previews: PreviewProvider {
  static var previews: some View {
    ChessBoard()
  }
}
