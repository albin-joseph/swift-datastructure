//
//  Algorithms.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 18/11/21.
//

//Data Structure + Algorithm = Programs

import Foundation

class AlAlgorithms{
    func getFactorial(_ value:Int) -> Int {
        if(value == 2){
            return 2
        }else{
            return value*getFactorial(value-1)
        }
    }
    
    func fibanocii(_ n:Int) -> Int {
        if(n < 2){
           return n
        }else{
           return   fibanocii(n-1) + fibanocii(n-2)
        }
    }
    
    func getFibnociiSeries(_ limit:Int) -> () {
        var f1 = 0
        var f2 = 1
        print(f1)
        for _ in 1...limit{
            print(f2)
            let next = f1 + f2
            f1 = f2
            f2 = next
        }
    }
    
    func reverseString(_ s: inout [Character]) {

           var count = s.count
           
          func reverseString(_ s: inout [Character], count: inout Int) {
           guard count > 0 else {return}

               if let last = s.popLast() {
                   count -= 1
                   s.insert(last, at: s.count - count)
                   reverseString(&s, count: &count)
               }
           }
           
           reverseString(&s, count: &count)
            print(String(s))
       }
    
    func quickSort<T: Comparable>(_ array: [T]) -> [T] {
        if array.count < 2 {
            return array
        }

        let pivot = array[0]
        //print("pivot : \(pivot)")
        
        let smaller = array.filter { $0 < pivot }
        let larger = array.filter { $0 > pivot }

        let result = quickSort(smaller) + [pivot] + quickSort(larger)
       // print("result : \(result)")
      
        return result
    }
}


//func mergeSort(_ array: [Int]) -> [Int] {
//  guard array.count > 1 else { return array }    // 1
//
//  let middleIndex = array.count / 2              // 2
//
//  let leftArray = mergeSort(Array(array[0..<middleIndex]))             // 3
//
//  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))  // 4
//
//  return merge(leftPile: leftArray, rightPile: rightArray)             // 5
//}


//func merge(leftPile: [Int], rightPile: [Int]) -> [Int] {
//  // 1
//  var leftIndex = 0
//  var rightIndex = 0
//
//  // 2
//  var orderedPile = [Int]()
//
//  // 3
//  while leftIndex < leftPile.count && rightIndex < rightPile.count {
//    if leftPile[leftIndex] < rightPile[rightIndex] {
//      orderedPile.append(leftPile[leftIndex])
//      leftIndex += 1
//    } else if leftPile[leftIndex] > rightPile[rightIndex] {
//      orderedPile.append(rightPile[rightIndex])
//      rightIndex += 1
//    } else {
//      orderedPile.append(leftPile[leftIndex])
//      leftIndex += 1
//      orderedPile.append(rightPile[rightIndex])
//      rightIndex += 1
//    }
//  }
//
//  // 4
//  while leftIndex < leftPile.count {
//    orderedPile.append(leftPile[leftIndex])
//    leftIndex += 1
//  }
//
//  while rightIndex < rightPile.count {
//    orderedPile.append(rightPile[rightIndex])
//    rightIndex += 1
//  }
//
//  return orderedPile
//}


func quickSort(_ arr: inout [Int], begin: Int, end: Int) {
    if begin < end {
        let partitionIndex = partition(&arr, begin: begin, end: end)
        quickSort(&arr, begin: begin, end: partitionIndex - 1)
        quickSort(&arr, begin: partitionIndex + 1, end: end)
    }
}
func partition(_ arr: inout [Int], begin: Int, end: Int) -> Int {
    let pivot = arr[end]
    var i = begin - 1
    for j in begin..<end {
        if arr[j] <= pivot {
            i += 1
            arr.swapAt(i, j)
        }
    }
    arr.swapAt(i + 1, end)
    return i + 1
}
