//
//  Algorithms.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 18/11/21.
//

//Data Structure + Algorithm = Programs

import Foundation

class AlAlgorithms{
    func getFactorial(_ value:Int) -> Int {
        if(value == 2){
            return 2
        }else{
            return value*getFactorial(value-1)
        }
    }
    
    func fibanocii(_ n:Int) -> Int {
        if(n < 2){
           return n
        }else{
           return   fibanocii(n-1) + fibanocii(n-2)
        }
    }
    
    func getFibnociiSeries(_ limit:Int) -> () {
        var f1 = 0
        var f2 = 1
        print(f1)
        for _ in 1...limit{
            print(f2)
            let next = f1 + f2
            f1 = f2
            f2 = next
        }
    }
}
