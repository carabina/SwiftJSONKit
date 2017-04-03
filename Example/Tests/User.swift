//
//  User.swift
//  SwiftJSONKit
//
//  Created by Patrick on 4/3/17.
//
//

import Foundation
import SwiftJSONKit

struct User: Equatable {
    let username: String
    
    enum JSONKey {
        static let username = "username"
    }
}
// MARK: - JSONDeserializable
extension User: JSONDeserializable {
    init(jsonRepresentation dictionary: JSONDictionary) throws {
        self.username = try decodeJSON(dictionary, key: JSONKey.username)
    }
}

// MARK: - Equatable
func ==(lhs: User, rhs: User) -> Bool {
    return lhs.username == rhs.username
}

