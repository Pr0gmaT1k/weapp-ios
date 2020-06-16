//
//  weapp_iosUITests.swift
//  weapp-iosUITests
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest

class weapp_iosUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
    }

    func testMonkey() throws {
        let app = XCUIApplication()
        app.launch()
        let tabBarsQuery = XCUIApplication().tabBars
        let button = tabBarsQuery.buttons["2"]
        button.tap()
        tabBarsQuery.buttons["3"].tap()
        button.tap()
        tabBarsQuery.buttons["1"].tap()
    }
}
