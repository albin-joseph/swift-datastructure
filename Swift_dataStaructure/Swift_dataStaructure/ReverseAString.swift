//
//  ReverseAString.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 14/10/21.
//

import Foundation

func reverse(_ string:String) -> String {
    var str = ""
    for character in string.enumerated(){
        str = "\(character.element)" + str
    }
    return str
}

func reverse2(_ string:String) -> String {
    return String(string.reversed())
}
