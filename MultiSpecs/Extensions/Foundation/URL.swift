//
//  URL.swift
//  Extensions
//
//  Created by Felipe Lefèvre Marino on 11/25/18.
//  Copyright © 2018 Felipe Marino. All rights reserved.
//

import Foundation

public extension URL {
    public init(staticString string: StaticString) {
        guard let url = URL(string: "\(string)") else {
            preconditionFailure("Invalid static URL string: \(string)")
        }
        
        self = url
    }
}
