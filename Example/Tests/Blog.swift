//
//  Blog.swift
//  SwiftJSONKit
//
//  Created by Patrick on 4/3/17.
//
//

import Foundation
import SwiftJSONKit

// MARK: - Blog
struct Blog: Equatable {
    let title: String
    let posts: [Post]
    
    enum JSONKey {
        static let title = "title"
        static let posts = "posts"
    }
}

// MARK: - JSONDeserializable
extension Blog: JSONDeserializable {
    init(jsonRepresentation dictionary: JSONDictionary) throws {
        self.title = try decodeJSON(dictionary, key: JSONKey.title)
        self.posts = try decodeJSON(dictionary, key: JSONKey.posts)
    }
}

// MARK: - Equatable
func ==(lhs: Blog, rhs: Blog) -> Bool {
    return lhs.title == rhs.title && lhs.posts == rhs.posts
}
