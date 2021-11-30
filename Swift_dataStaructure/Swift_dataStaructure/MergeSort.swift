//
//  MergeSort.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 30/11/21.
//

import Foundation

class MergeSort {
    func mergeSort(_ array:[Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }
        let midIndex = array.count/2
        let leftArray = mergeSort(Array(array[0..<midIndex]))
        let rightArray = mergeSort(Array(array[midIndex..<array.count]))
        return mergeArray(leftArray, rightArray)
    }
    
   private func mergeArray(_ leftArray:[Int], _ rightArray:[Int]) -> [Int]{
        var leftIndex = 0
        var rightIndex = 0
        
        var sortedArray:[Int] = []
        sortedArray.reserveCapacity(leftArray.count + rightArray.count)
        
        while leftIndex < leftArray.count && rightIndex < rightArray.count {
            if(leftArray[leftIndex] < rightArray[rightIndex]){
                sortedArray.append(leftArray[leftIndex])
                leftIndex += 1
            }else if(leftArray[leftIndex] > rightArray[rightIndex]){
                sortedArray.append(rightArray[rightIndex])
                rightIndex += 1
            }else{
                sortedArray.append(leftArray[leftIndex])
                leftIndex += 1
                sortedArray.append(rightArray[rightIndex])
                rightIndex += 1
            }
        }
        
        while leftIndex < leftArray.count{
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < rightArray.count{
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
        
        return sortedArray
    }
}
