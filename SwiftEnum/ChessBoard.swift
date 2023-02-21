
import SwiftUI

enum WhitePieces: String {
  case king = "♔"
  case queen = "♕"
  case bishop = "♗"
  case knight = "♘"
  case rook = "♖"
  case pawn = "♙"
}

enum BlackPieces: String {
  case king = "♚"
  case queen = "♛"
  case bishop = "♝"
  case knight = "♞"
  case rook = "♜"
  case pawn = "♟"
}

enum Squares: CaseIterable, Identifiable {
  case a,b,c,d,e,f,g,h
  var id: Squares { self }
}

enum Selected {
  case WhitePieces
  case BlackPieces
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
    HStack(spacing: 1) {
      ForEach(1..<9) { r in
        VStack(spacing: 1) {
          ForEach(1..<Squares.allCases.count) { c in
            ZStack {
              Rectangle()
                .fill(((r+c)%2 == 0) ? .brown : .black)
                .frame(width: 80, height: 80)
              Text(WhitePieces.queen.rawValue).foregroundColor(.white).font(.system(size: 50))
            }.onTapGesture {
              print(r,$0)
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
