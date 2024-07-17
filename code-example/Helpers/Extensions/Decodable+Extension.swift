//
//  Decodable+Extension.swift
//  code-example
//
//  Created by Alexy Nesterchuk on 17.07.2024.
//

import Foundation

extension Decodable {
    
    // A much faster version of JSONDecoder -> ZippyJSON
    static func decoded(from data: Data, using decoder: JSONDecoder = JSONDecoder()) throws -> Self {
        return try decoder.decode(Self.self, from: data)
    }
}
