//
//  BubleSort.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 28/11/21.
//

import Foundation

func  bubleSort(_ array: inout [Int]) -> [Int] {
    if(array.count < 2){
        return array
    }
    
    let count = array.count
    
    for i in 0...count-1{
        for j in 0...(count-i){
            if(j+1 < count){
                if(array[j] > array[j+1]){
                    let temp = array[j+1]
                    array[j+1] = array[j]
                    array[j] = temp
                }
            }
        }
    }
    return array
}
