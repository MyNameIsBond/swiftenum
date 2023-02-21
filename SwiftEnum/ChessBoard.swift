
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
  case empty = ""
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

struct PieceOnTheBoard: Hashable {
  let Row: Squares
  let Column: Int
  let Piece: Pieces
}

func setUpBoard() -> [[PieceOnTheBoard]] {
  var myBoard:[[PieceOnTheBoard]] = []
  
  for square in Squares.allCases {
    var myRow:[PieceOnTheBoard] = []
    for inSqaure in 1...8 {
      myRow.append(.init(Row: square, Column: inSqaure, Piece: setUpPiecesOnNewGame(row: square, column: inSqaure)))
    }
    myBoard.append(myRow)
    myRow.removeAll()
  }
  return myBoard
}

struct ChessBoard: View {
  @State var board = setUpBoard()
  var body: some View {
    HStack(spacing: 1) {
      ForEach(0..<board.count) { r in
        VStack(spacing: 1) {
          ForEach(board[r], id: \.self) { c in
            ZStack {
              Rectangle()
                .fill(((r + c.Column)%2 == 0) ? .brown : .black)
                .frame(width: 80, height: 80)
              Text(c.Piece.rawValue).foregroundColor(.white).font(.system(size: 50))
            }.onTapGesture {
              print("TODO!!")
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
