//
//  URL+Extensions.swift
//  XcUiTest
//
//  Created by Paulo H.M. on 25/08/23.
//

import Foundation

extension URL {
    init(staticString string: StaticString) {
        guard let url = URL(string: "\(string)") else {
            preconditionFailure("Invalid static URL string: \(string)")
        }

        self = url
    }
}
