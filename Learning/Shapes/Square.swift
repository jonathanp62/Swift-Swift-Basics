//
//  Square.swift
//  Learning
//
//  Created by Jonathan Parker on 11/27/26.
//

import Foundation

/// The square shape
class Square: NamedShape {
    var sideLength: Double
    
    /// The initializer
    /// - Parameters:
    ///   - sideLength: The length of each side
    ///   - name: The name of the square
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        super.numberOfSides = 4
    }
    
    /// Return the area of the square
    /// - Returns: The area of the square
    func area() -> Double {
        return self.sideLength * self.sideLength
    }
    
    /// Return the simple description
    /// - Returns: The simple description
    override func simpleDescription() -> String {
        return "A square with sides of length \(self.sideLength)"
    }
}
