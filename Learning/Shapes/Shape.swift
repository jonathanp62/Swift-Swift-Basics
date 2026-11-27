//
//  Shape.swift
//  Learning
//
//  Created by Jonathan Parker on 11/27/26.
//

import Foundation

/// The shape class
class Shape {
    var numberOfSides = 0
    
    /// The simple description
    /// - Returns: The simple description
    func simpleDescription() -> String {
        return "A shape with \(self.numberOfSides) sides"
    }
}
