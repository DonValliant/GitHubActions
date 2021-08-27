//
//  LandmarksTests.swift
//  LandmarksTests
//
//  Created by Donald Valliant on 8/27/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import XCTest
@testable import Landmarks

class LandmarksTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLandmark() {
        let hikes = ModelData().hikes
        let hike = hikes[5]
        let hikeName = hike.name
        XCTAssertEqual(hikeName, "Lonesome Ridge Trail")
        
        let landmarks = ModelData().landmarks
        let landmarklName = landmarks[4].name
        XCTAssertEqual(landmarklName, "Twin Lake")
    }


}
