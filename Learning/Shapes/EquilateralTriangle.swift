//
//  EquilateralTriangle.swift
//  Learning
//
//  Created by Jonathan Parker on 11/28/26.
//

import Foundation

/// The equilateral triangle class
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    /// The initializer
    /// - Parameters:
    ///   - sideLength: The length of each side
    ///   - name: The name of this eqilateral triangle
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        super.numberOfSides = 3
    }
    
    /// The perimeter property
    var perimeter: Double {
        get {
            return 3.0 * self.sideLength
        }
        
        set {
            self.sideLength = newValue / 3.0
        }
    }
    
    /// Returns the simple description
    /// - Returns: The simple description
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
