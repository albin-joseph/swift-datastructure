//
//  Problem2.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 28/09/21.
//

import Foundation
/**Write a function to check a pair with sum **/

func hasPairWithSum(_ array:[Int], _ sum: Int)->Bool{
    let len = array.count
    if(len >= 2){
        return true
    }else{
        return false
    }
}
