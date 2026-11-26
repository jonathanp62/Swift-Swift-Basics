//
//  Arrays.swift
//  Learning
//
//  Created by Jonathan Parker on 11/26/26.
//

import Foundation

/// The arrays module
enum Arrays {
    /// The run function
    static func run() {
        var fruits = ["strawberries", "limes", "tangerines"]

        // Replace 'limes' with 'grapes'
        fruits[1] = "grapes"

        // Add elements
        fruits.append("blueberries")
        fruits.append("limes")
        
        print(fruits)
    }
}
