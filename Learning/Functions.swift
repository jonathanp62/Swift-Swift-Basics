//
//  Functions.swift
//  Learning
//
//  Created by Jonathan Parker on 11/27/26.
//

import Foundation

/// The functions module
enum Functions {
    /// The run function
    static func run() {
        print(greet("Jonathan", on: "Friday"))
        
        let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
        
        print("Min: \(statistics.min); Max: \(statistics.max); Sum: \(statistics.sum)")
        print(getFifteen())
        
        let incrementer = makeIncrementer()
        
        print(incrementer(64))  // 65
        
        let numbers = [20, 19, 7, 12]
        
        print(hasAnyMatches(list: numbers, condition: lessThanTen)) // True
    }
    
    /// Return a greeting to the person with today's lunch special
    /// - Parameters:
    ///   - person: The name of the person
    ///   - day: The day of the week
    /// - Returns: The greeting
    static func greet(_ person: String, on day: String) -> String {
        // _ is the no argument label

        let lunchSpecial = getLunchSpecial(day: day)
        
        return "Hello \(person), today is \(day) and the lunch special is \(lunchSpecial)."
    }
    
    
    /// Return the lunch for the specified day of the week
    /// - Parameter day: The day of the week
    /// - Returns: The lunch special
    static func getLunchSpecial(day: String) -> String {
        let special = switch day {
            case "Sunday":
                "Eggs and Bacon"
            case "Monday":
                "Turkey Burgers"
            case "Tuesday":
                "Salmon"
            case "Wednesday":
                "Spaghetti"
            case "Thursday":
                "Soup and Sandwich"
            case "Friday":
                "Fish and Chips"
            case "Saturday":
                "Emergency Pizza"
            default:
                "The day of the week is incorrect"
        }
        
        return special
    }
    
    /// Return a tuple of statistics for the given array of integers
    /// - Parameter scores: An array of integers
    /// - Returns: A tuple with the min, max, and sum of the specified integer array
    static func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        
        var max = scores[0]
        var sum = 0


        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }

        return (min, max, sum)
    }
    
    /// Return fifteen and demonstrate a nested function
    static func getFifteen() -> Int {
        var y = 10
        
        /// Add 5 to 'y'
        func add() {
            y += 5
        }
        
        add()
        
        return y
    }
    
    
    /// Return an incrementer function
    /// - Returns: A function that takes an Int and returns that value incremented by one
    static func makeIncrementer() -> ((Int) -> Int) {
        /// A function that increments an integer value
        /// - Parameter number: The value
        /// - Returns: The function
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        
        return addOne
    }
    
    /// Return true when the list of integers matches the condition function when it is applied
    /// - Parameters:
    ///   - list: A list of integers
    ///   - condition: The function that is applied to each number in the list
    /// - Returns: True if at least one number matches the condition
    static func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        
        return false
    }
    
    /// Return true if the number is less than ten
    /// - Parameter number: A number
    /// - Returns: True if the number is less than ten
    static func lessThanTen(number: Int) -> Bool {
        return number < 10
    }
}
