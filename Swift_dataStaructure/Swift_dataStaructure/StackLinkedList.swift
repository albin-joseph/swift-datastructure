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
        let node = Node.init(value)
        if(length == 0){
            top = node
            bottom = node
            node.next = nil
        }else{
            let holdingPointer = top
            top = node
            node.next = holdingPointer
        }
        node.value = value
        length += 1
    }
    
    func pop() -> String {
        if let _top = top{
            let holdingPointer = _top.next
            _top.next = nil
            top = holdingPointer
            if(length == 1){
                bottom = nil
                top = nil
            }
            length -= 1
            return _top.value
        }else{
            return "Stack is empty"
        }
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

