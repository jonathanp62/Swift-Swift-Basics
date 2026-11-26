//
//  Control-Flow.swift
//  Learning
//
//  Created by Jonathan Parker on 11/26/26.
//

import Foundation

/// The control flow module
enum ControlFlow {
    /// The run function
    static func run() {
        scores()
        optionals()
        switches()
        forIn()
        whiles()
        ranges()
    }
    
    static func scores() {
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        
        print(teamScore)    // 11
        
        // Assign based on the outcome of the 'if'
        
        let scoreDecoration = if teamScore > 10 {
            "🎉"
        } else {
            ""
        }
        
        print("Score:", teamScore, scoreDecoration)
    }
    
    static func optionals() {
        let optionalString: String? = "Hello"
        
        print(optionalString == nil)    // false

        var optionalName: String? = "John Appleseed"
        var greeting = "Hello!"
        
        if let name = optionalName {
            greeting = "Hello, \(name)"
        }
        
        print(greeting)
        
        optionalName = nil
     
        if let name = optionalName {
            greeting = "Hello, \(name)"
        } else {
            greeting = "Hello!"
        }
        
        print(greeting)
    }
    
    static func switches() {
        let vegetable = "red pepper"
        
        switch vegetable {
            case "celery":
                print("Add some raisins and make ants on a log.")
            case "cucumber", "watercress":
                print("That would make a good tea sandwich.")
            case let x where x.hasSuffix("pepper"):
                print("Is it a spicy \(x)?")    // This prints
            default:
                print("Everything tastes good in soup.")
        }
    }
    
    static func forIn() {
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        
        var largest = 0
        
        // The _ repesents the key which is not handlex here
        
        for (_, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        
        print(largest)  // 25
    }
    
    static func whiles() {
        var n = 2
        
        while n < 100 {
            n *= 2
        }
        
        print(n)    // 128
        
        var m = 2
        
        repeat {
            m *= 2
        } while m < 100
        
        print(m)    // 128
    }
    
    static func ranges() {
        var total = 0
        
        for i in 0..<4 {
            total += i
        }
        
        print(total)    // 6
    }
}
