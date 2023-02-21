
import SwiftUI


func setUpPiecesOnNewGame(row: Squares, column: Int) -> Pieces {
  switch (row, column) {
  case (.a, 2):
    return .pawn
  case (.a, 1):
    return .rook
    
  case (.b, 2):
    return .pawn
  case (.b, 1):
    return .knight
    
  case (.c, 2):
    return .pawn
  case (.c, 1):
    return .bishop
    
  case (.d, 2):
    return .pawn
  case (.d, 1):
    return .queen

  case (.e, 2):
    return .pawn
  case (.e, 1):
    return .king
    
  case (.f, 2):
    return .pawn
  case (.f, 1):
    return .bishop
    
  case (.g, 2):
    return .pawn
  case (.g, 1):
    return .knight
    
  case (.h, 2):
    return .pawn
  case (.h, 1):
    return .rook
    
 // Black Pieces
  case (.a, 7):
    return .blackPawn
  case (.a, 8):
    return .blackRook
    
  case (.b, 7):
    return .blackPawn
  case (.b, 8):
    return .blackKnight
    
  case (.c, 7):
    return .blackPawn
  case (.c, 8):
    return .blackBishop
    
  case (.d, 7):
    return .blackPawn
  case (.d, 8):
    return .blackQueen

  case (.e, 7):
    return .blackPawn
  case (.e, 8):
    return .blackKing
    
  case (.f, 7):
    return .blackPawn
  case (.f, 8):
    return .blackBishop
    
  case (.g, 7):
    return .blackPawn
  case (.g, 8):
    return .blackKnight
    
  case (.h, 7):
    return .blackPawn
  case (.h, 8):
    return .blackRook
    
  default:
    return .empty
  }
}
