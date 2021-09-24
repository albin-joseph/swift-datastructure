//
//  BigO.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 24/09/21.
//

import Foundation

// Big O indicates the `Scalability` or `Complexity` of an application. This analysis helps to do btter code
//Cplexity doen't mean how many time take to execute a program(It depend's on machines capability). Complexity means how many expressions we need to execute for getting the output.

/**1. Big O(n)
 It's also known as `Liner Time. In this n indicates the how many steps require to complete the operation. When input count increase O(n) programs execution steps will increase.
 */

func findAvacdo(_ fruitArray:[String]){
    for item in fruitArray {
        if item == "Avacado"{
            print("Avacado prsent")
        }
    }
}

/**Big O(1)
 It's also known as `Constant Time. In this n indicates that this will takes constant time to execute if we provide any number of inputs.
 */

func logFirstFruit(_ fruitArray: [String]){
    print(fruitArray[0])
}
//The above function complexity is O(1) ---> It's an example of O(1)

func logFirstTwoFruit(_ fruitArray: [String]){
    print(fruitArray[0])
    print(fruitArray[1])
}
//The above function complexity is O(2) ---> It's an example of O(1) because it take contant step to execute.

/*Big O(n^2)
 It's also known as Quadratic. Every element i a collection compares with another. Normally a two nested loop
 */

func logNestedElement(_ array1:[String], _ array2:[String]){
    array1.forEach { item1 in
        array2.forEach { item2 in
            print(item1, item2)
        }
    }
}

//Big O calculation rules
//1. Conside worst case
//2. Drop tha constants(if we get the Big O calculated value as O(7 + 2n); then after drop the constants that vunction's complexity should be O(n))
//3. Different terms for inputs(We need to consider the inputs and how amny times iterate in Big O claculations)
//4.
