//
//  XcUiTestUITests.swift
//  XcUiTestUITests
//
//  Created by Paulo H.M. on 16/08/23.
//

import XCTest

final class XcUiTestUITests: XCTestCase {
    var app: XCUIApplication!
    var customerList: XCUIElementQuery!
    var realodButton: XCUIElement!
 
    override func setUpWithError() throws {
        try super.setUpWithError()
        app = XCUIApplication()
        customerList = app.otherElements.cells
        realodButton = app.otherElements.buttons["Reload Data"]
        app.launch()
    }

    func testTotalCustomers(){
        XCTAssertEqual(customerList.count, 4)
    }

    func testFirstCustomer(){
        let firstCell = customerList.firstMatch
        let title = firstCell.staticTexts["45.square"]
        let subtitle = firstCell.staticTexts["Ivy Frazier"]
        XCTAssertTrue(title.exists)
        XCTAssertTrue(subtitle.exists)
    }

    func testRealodData(){
        realodButton.tap()
        _ = customerList.element.waitForExistence(timeout: 2)
        XCTAssertEqual(customerList.count, 4)
    }

    func testConfirmCustomer(){
        let firstCell = customerList.firstMatch
        let confirm = firstCell.buttons["Confirm Button"]
        XCTAssertTrue(confirm.exists)
    }

    func testTriggerConfirmButton(){
        let firstCell = customerList.firstMatch
        let confirm = firstCell.buttons["Confirm Button"]
        confirm.tap()
        XCTAssertNotNil( app.alerts["Alert Box"])
        XCTAssertNotNil( app.alerts["Alert Box"].buttons["Yes"])
    }
    
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        app = nil
        customerList = nil
        realodButton = nil
    }
 
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
