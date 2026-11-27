//
//  NamedShape.swift
//  Learning
//
//  Created by Jonathan Parker on 11/27/26.
//

import Foundation

/// The named shape class
class NamedShape: Shape {
    var name: String
    
    /// The initializer
    /// - Parameter name: The name of the shape
    init(name: String) {
        self.name =  name
    }
}
