
import SwiftUI

enum Algs{
  case bubbleSort(arr: [Int])
  case insertionSort(arr: [Int])
  case mergeSort(arr: [Int])
  case quickSort(arr: [Int])
  
  func sortBy() {
    switch self {
    case .bubbleSort(var arr):
      return bubbleSortAlg(&arr)
    case .insertionSort(arr: var arr):
      return insertionSortAlg(&arr)
    case .mergeSort(arr: var arr):
      return mergeSortAlg(&arr)
    case .quickSort(arr: var arr):
      return quickSortAlg(&arr)
    }
  }
  
}




struct SortingAlgs: View {
  var body: some View {
    Text("Sorting Algorithms")
  }
}

struct SortingAlgs_Previews: PreviewProvider {
  static var previews: some View {
    SortingAlgs()
  }
}
