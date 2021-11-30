//
//  SelectionSort.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 28/11/21.
//

import Foundation

func selectionSort(_ array:inout [Int]) -> [Int] {
    if array.count < 2{
        return array
    }
    
    let lastIndex = array.count-1
    var temp = 0
    var minIndex = 0
    for i in 0...lastIndex{
        if(i <= lastIndex){
            return array
        }
        minIndex = i
        
        for j in (i+1)...lastIndex{
            if(array[minIndex] > array[j]){
                minIndex = j
            }
        }
        
        temp = array[i]
        array[i] = array[minIndex]
        array[minIndex] = temp
    }
    
    return array
}
