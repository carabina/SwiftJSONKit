//
//  DecodeDateTests.swift
//  SwiftJSONKit
//
//  Created by Patrick on 4/3/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftJSONKit

final class DecodeDateTests: XCTestCase {
    let date = Date(timeIntervalSince1970: 123456789)
    
    func testDateString() {
        if #available(iOS 10.0, *) {
            let dictionary = [
                "date": "1973-11-29T21:33:09+00:00"
            ]
            
            XCTAssertEqual(date, try! decodeJSON(dictionary, key: "date"))
            
        } else {
            XCTAssert(true)
        }
    }
    
    func testTime() {
        let dictionary = ["timestamp": 123456789]
        
        XCTAssertEqual(date, try! decodeJSON(dictionary, key: "timestamp"))
    }
}
