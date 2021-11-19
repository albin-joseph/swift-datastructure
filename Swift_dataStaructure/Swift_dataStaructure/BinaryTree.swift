//
//  BinaryTree.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 18/10/21.
//

import Foundation

class BinaryNode {
    var value: Int
    var left: BinaryNode?
    var right: BinaryNode?
    init(_ value: Int) {
        self.value = value
    }
}
let c = [0,1,0,0,9]
func jumpingOnClouds(c: [Int]) -> Int {
    // Write your code here
    var jumpCount = 0
    for i in 0 ... c.count-1{
        if((c[i]) != 0){
          jumpCount += 1
      }
    }
    return jumpCount
}

