//
//  XcUiTestUITests.swift
//  XcUiTestUITests
//
//  Created by Paulo H.M. on 16/08/23.
//

import XCTest

final class XcUiTestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
 
    func testMainScreen() throws {
        let app = XCUIApplication()
        app.images["Globo"].tap()
        XCTAssertNotNil(app.images["Globo"],"Image is null")
        XCTAssertEqual(app.staticTexts["Hello, world!"].label, "Hello, world!","Wrong hello word text")
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
