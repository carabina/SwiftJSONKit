//
//  DecodeURLTests.swift
//  SwiftJSONKit
//
//  Created by Patrick on 4/3/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftJSONKit

final class DecodeURLTests: XCTestCase {
    func testValidURL() {
        
        let dictionary = ["url": "http://google.com"]
        
        let url = URL(string: "http://google.com")!
        
        XCTAssertEqual(url, try! decodeJSON(dictionary, key: "url"))
    }
    
    func testInvalidURL() {
        let dictionary = ["url": "😋"]
        
        XCTAssertThrowsError(try decodeJSON(dictionary, key: "url") as URL)
    }
}
