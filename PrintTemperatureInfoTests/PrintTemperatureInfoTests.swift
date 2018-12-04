//
//  PrintTemperatureInfoTests.swift
//  PrintTemperatureInfoTests
//
//  Created by anon on 2018-09-06.
//  Copyright © 2018 anon. All rights reserved.
//

import XCTest
@testable import PrintTemperatureInfo

class PrintTemperatureInfoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testComputesMaximumTemperature() {
        XCTAssertEqual(MaxAndMinTemperatures().getMaxTemperature(temperatures: [5,7]), 7)
    }
    
    func testComputesMinTemperature(){
        XCTAssertEqual(MaxAndMinTemperatures().getMinTemperature(temperatures: [4,100,1, 49, 0]),0)
    }
    
    func testComputesAverageTemperature(){
        var temperatures: [Int8] = [-7, 7, 0]
        XCTAssertEqual(AverageTemperature().getTemperture(ts:temperatures), 0.0)        
    }
    
}
