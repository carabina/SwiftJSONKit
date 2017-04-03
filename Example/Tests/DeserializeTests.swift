//
//  DeserializeTests.swift
//  SwiftJSONKit
//
//  Created by Patrick on 4/3/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftJSONKit

final class DeserializeTests: XCTestCase {
    let patrick = User(username: "Patrick")
    
    func testDeserialization() {
        let dictionary = [User.JSONKey.username: "Patrick"]
        
        XCTAssertEqual(patrick, try! decodeJSON(dictionary))
    }
    
    func testNestedDeserialization() {
        let dictionary: JSONDictionary = [
            Post.JSONKey.title: "My First Post",
            Post.JSONKey.author: [User.JSONKey.username: "Patrick"]
        ]
        
        let post = Post(title: "My First Post", author: patrick)
        
        XCTAssertEqual(post, try! decodeJSON(dictionary))
    }
    
    func testNestedArrayDeserialization() {
        let dictionary: JSONDictionary = [
            Blog.JSONKey.title: "Pat's Blog",
            Blog.JSONKey.posts: [
                [
                    Post.JSONKey.title: "My Second Post",
                    Post.JSONKey.author: [
                        User.JSONKey.username: "Patrick"
                    ]
                ],
                [
                    Post.JSONKey.title: "My First Post",
                    Post.JSONKey.author: [
                        User.JSONKey.username: "Patrick"
                    ]
                ]
            ]
        ]
        
        let blog = Blog(title: "Pat's Blog", posts: [
            Post(title: "My Second Post", author: patrick),
            Post(title: "My First Post", author: patrick)
            ])
        
        XCTAssertEqual(blog, try! decodeJSON(dictionary))
        
    }
}
