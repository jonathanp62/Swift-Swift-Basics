//
//  Circle.swift
//  Learning
//
//  Created by Jonathan Parker on 11/27/26.
//

import Foundation

/// The circle class
class Circle: NamedShape {
    var radius: Double
    
    /// The initializer
    /// - Parameters:
    ///   - radius: A double
    ///   - name: The name of the cirlce
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        super.numberOfSides = 0
    }
    
    /// Returns the area of the circle
    /// - Returns: The area of the circle
    func area() -> Double {
        return Double.pi * self.radius * self.radius
    }
    
    /// Overrides the simple description
    /// - Returns: The simple description
    override func simpleDescription() -> String {
        return "A cirlce with a radius of \(self.radius)"
    }
}
