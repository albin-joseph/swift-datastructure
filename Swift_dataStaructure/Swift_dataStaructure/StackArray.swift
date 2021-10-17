//
//  StackArray.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 17/10/21.
//

import Foundation
class StackArray{
    var arr:[String] = []
    func push(_ value:String) -> () {
        arr.append(value)
    }
    func pop() -> String {
        return arr.popLast() ?? "Stackis empty"
    }
}
