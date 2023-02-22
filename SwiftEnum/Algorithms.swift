
import Foundation

func bubbleSortAlg<T: Comparable>(_ array: inout [T]) {
    guard array.count > 1 else {
        return
    }
    for i in 0..<array.count {
        for j in 1..<array.count - i {
            if array[j-1] > array[j] {
                array.swapAt(j-1, j)
            }
        }
    }
}


func insertionSortAlg<T: Comparable>(_ array: inout [T]) {
    guard array.count > 1 else {
        return
    }
    
    for i in 1..<array.count {
        let currentValue = array[i]
        var j = i - 1
        
        while j >= 0 && array[j] > currentValue {
            array[j+1] = array[j]
            j -= 1
        }
        
        array[j+1] = currentValue
    }
}


func mergeSortAlg<T: Comparable>(_ array: inout [T]) {
    guard array.count > 1 else {
        return
    }
    
    let midIndex = array.count / 2
    var leftArray = Array(array[0..<midIndex])
    var rightArray = Array(array[midIndex..<array.count])
    
    mergeSortAlg(&leftArray)
    mergeSortAlg(&rightArray)
    array = merge(&leftArray, &rightArray)
}


func merge<T: Comparable>(_ leftArray: inout [T], _ rightArray: inout [T]) -> [T] {
    var resultArray: [T] = []
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            resultArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else if leftArray[leftIndex] > rightArray[rightIndex] {
            resultArray.append(rightArray[rightIndex])
            rightIndex += 1
        } else {
            resultArray.append(leftArray[leftIndex])
            leftIndex += 1
            resultArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftArray.count {
        resultArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightArray.count {
        resultArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    leftArray = resultArray[0..<leftArray.count].map({ $0 })
    rightArray = resultArray[leftArray.count..<resultArray.count].map({ $0 })
    
    return resultArray
}


func quickSortAlg<T: Comparable>(_ array: inout [T], low: Int = 0, high: Int? = nil) {
    let high = high ?? array.count - 1
    
    guard low < high else {
        return
    }
    
    let pivot = partition(&array, low: low, high: high)
    
  quickSortAlg(&array, low: low, high: pivot - 1)
  quickSortAlg(&array, low: pivot + 1, high: high)
}

func partition<T: Comparable>(_ array: inout [T], low: Int, high: Int) -> Int {
    let pivotIndex = high
    var i = low
    
    for j in low..<high {
        if array[j] <= array[pivotIndex] {
            array.swapAt(i, j)
            i += 1
        }
    }
    
    array.swapAt(i, pivotIndex)
    return i
}
