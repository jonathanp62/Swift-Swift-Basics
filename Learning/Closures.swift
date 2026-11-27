//
//  Closures.swift
//  Learning
//
//  Created by Jonathan Parker on 11/27/26.
//

import Foundation

/// The closures module
enum Closures {
    /// The run function
    static func run() {
        basic()
        parametersAndReturn()
        passingToFunction()
        shorthandWithCollections()
        
        let numbers = Array(1...10)
        
        let mappedNumbers = numbers.map({ (number: Int) -> Int in
            var result: Int
            
            if number % 2 == 0 {
                result = number * 3
            } else {
                result = 0
            }
            
            return result
        })
        
        print(mappedNumbers)
    }
    
    /// A basic closure with no parameters
    static func basic() {
        let sayHello = {
            print("Hello from a closure")
        }
        
        sayHello()
    }
    
    /// A closure with parameters and a return value
    static func parametersAndReturn() {
        let add = { (a: Int, b: Int) -> Int in
            return a + b
        }
        
        print(add(5, 3))    // 8
    }
    
    
    /// Passing a closeure to a function
    static func passingToFunction() {
        func performAction(completion: () -> Void) {
            print("Working...")
            completion()
        }

        // Called using trailing closure syntax
        // The curly braced code is the completion parameter above
        
        performAction {
            print("Done!")
        }
    }
    
    /// Shorthand syntax with collections
    static func shorthandWithCollections() {
        let numbers = [1, 2, 3, 4]

        // Full syntax
        let doubledFull = numbers.map({ (number: Int) -> Int in
            return number * 2
        })

        // Shorthand trailing syntax (most common in Swift)
        let doubledShort = numbers.map { $0 * 2 }

        print(doubledFull)  // [2, 4, 6, 8]
        print(doubledShort) // [2, 4, 6, 8]
    }
}
