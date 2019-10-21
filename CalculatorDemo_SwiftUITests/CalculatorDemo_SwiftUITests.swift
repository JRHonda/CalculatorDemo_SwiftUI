//
//  CalculatorDemo_SwiftUITests.swift
//  CalculatorDemo_SwiftUITests
//
//  Created by Justin Honda on 10/11/19.
//  Copyright © 2019 Justin Honda. All rights reserved.
//

import XCTest
@testable import CalculatorDemo_SwiftUI

class CalculatorDemo_SwiftUITests: XCTestCase {
    
    var xctExpectations = [XCTestExpectation]()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        xctExpectations.append(.init(description: "updateResultsView"))
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var calcLayout1 = CalcButtonsLayoutSwiftUIView(showAlert: false, textInResultView: "123", resultsFontSize: 50, showDetails: true)
        XCTAssert(calcLayout1.showAlert == false)
        XCTAssert(calcLayout1.textInResultView == "123")
        
        XCTWaiter(delegate: .none).wait(for: xctExpectations, timeout: 60)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func updateResultsView(forCount: Int) -> Int {
        var count: Int = 0
        count = forCount
        count = count + 1
        
        if count == 3 {
            return 3
        }
        return updateResultsView(forCount: forCount)
    }
    
    override func wait(for expectations: [XCTestExpectation], timeout seconds: TimeInterval) {
        for expct in expectations {
            XCTAssert(expct.expectedFulfillmentCount == 3)
        }
    }

}
