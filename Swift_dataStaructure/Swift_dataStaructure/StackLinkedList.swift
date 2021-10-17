//
//  StackLinkedList.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 17/10/21.
//

import Foundation

class Stack{
    var top:Node?
    var bottom:Node?
    var length:Int = 0
    
    func push(_ value:String) -> () {
        
    }
    
    func pop() -> String {
        return ""
    }
}

extension Stack:CustomStringConvertible{
    var description: String {
        var text = "["
        var node = top
        while(node != nil){
            text += "\(node!.value)"
            node = node!.next
            if(node != nil){
                text += ", "
            }
        }
        return text + "]"
    }
}

