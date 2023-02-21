
import SwiftUI

enum Pieces: String {
  case king = "♔"
  case queen = "♕"
  case bishop = "♗"
  case knight = "♘"
  case rook = "♖"
  case pawn = "♙"
  case blackKing = "♚"
  case blackQueen = "♛"
  case blackBishop = "♝"
  case blackKnight = "♞"
  case blackRook = "♜"
  case blackPawn = "♟"
}

enum Squares: CaseIterable, Identifiable {
  case a,b,c,d,e,f,g,h
  var id: Squares { self }
}

enum Sqaure {
  case Pieces
  case empty
}

enum Selected {
  case WhitePieces
  case BlackPieces
}

enum PlauersTurn {
  case white, black
}

struct PieceOnTheBoard {
  let Row: Squares
  let Column: Int
  let Piece: Sqaure
}

func setUpBoard() -> [PieceOnTheBoard] {
  var myBoard:[PieceOnTheBoard] = []
  
  for square in Squares.allCases {
    for inSqaure in 1...8 {
      myBoard.append(.init(Row: square, Column: inSqaure, Piece: .empty))
    }
  }
  print(myBoard)
  return myBoard
}

struct ChessBoard: View {
  @State var board = setUpBoard()
  var body: some View {
    HStack(spacing: 1) {
      ForEach(1..<9) { r in
        VStack(spacing: 1) {
          ForEach(1..<Squares.allCases.count) { c in
            ZStack {
              Rectangle()
                .fill(((r+c)%2 == 0) ? .brown : .black)
                .frame(width: 80, height: 80)
              Text(Pieces.queen.rawValue).foregroundColor(.white).font(.system(size: 50))
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
