//
//  Post.swift
//  SwiftJSONKit
//
//  Created by Patrick on 4/3/17.
//
//

import Foundation
import SwiftJSONKit

// MARK: - Post
struct Post: Equatable {
    let title: String
    let author: User
    
    enum JSONKey {
        static let title = "title"
        static let author = "author"
    }
}

// MARK: - JSONDeserializable
extension Post: JSONDeserializable {
    init(jsonRepresentation dictionary: JSONDictionary) throws {
        self.title = try decodeJSON(dictionary, key: JSONKey.title)
        self.author = try decodeJSON(dictionary, key: JSONKey.author)
    }
}

// MARK: - Equatable
func ==(lhs: Post, rhs: Post) -> Bool {
    return lhs.title == rhs.title && lhs.author == rhs.author
}
