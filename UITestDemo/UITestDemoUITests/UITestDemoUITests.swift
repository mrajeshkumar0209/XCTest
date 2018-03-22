//
//  UITestDemoUITests.swift
//  UITestDemoUITests
//
//  Created by Rajeshkumar maddi on 21/03/18.
//  Copyright © 2018 SaiRajesh. All rights reserved.
//

import XCTest

class UITestDemoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let table = app.tables.element(boundBy: 0)
        
        XCTAssertEqual(app.tables.count, 1)
        XCTAssertEqual(app.buttons.count, 1)
        XCTAssertEqual(table.cells.count, 0)
        
        app.buttons["LOAD TABLE"].tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["This The row5"]/*[[".cells.staticTexts[\"This The row5\"]",".staticTexts[\"This The row5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        
        XCTAssertEqual(table.cells.count, 9)
    }
}
