//
//  Problem2.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 28/09/21.
//

import Foundation
/**Write a function to check a pair with sum **/
//0>array.count<100


func hasPairWithSum(_ array:[Int], _ sum: Int)->Bool{
    let len = array.count
    var setvalue = Set<Int>()
    if(len >= 2){
        for element in array {
            if(setvalue.contains(element)){
                return true
            }
            setvalue.insert(sum-element)
        }
        return false
    }else{
        return false
    }
}
