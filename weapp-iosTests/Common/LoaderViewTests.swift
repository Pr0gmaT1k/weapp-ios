//
//  LoaderViewTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

final class LoaderViewTests: XCTestCase {
    // MARK: - Properties
    private var viewController: UIViewController!
    private var topLevelUIUtilities = TopLevelUIViewController<UIViewController>()

    // MARK:- Tests
    override func setUp() {
        super.setUp()
        viewController = UIViewController()
        topLevelUIUtilities.setupTopLevelUI(with: viewController, inNavigationController: false)
    }

    override func tearDown() {
        super.tearDown()
        topLevelUIUtilities.tearDownTopLevelUI()
    }

    func testIsShownLoader() {
        XCTAssert(viewController.loaderIsShown == false)
    }

    func testShowLoader() {
        viewController.showLoader()
        XCTAssert(viewController.loaderIsShown)
    }

    func testHideLoader() {
        viewController.showLoader()
        XCTAssert(viewController.loaderIsShown)
        viewController.hideLoader(animated: false)
        XCTAssert(viewController.loaderIsShown == false)
    }

    func testHideLoaderAnimated() {
        viewController.showLoader()
        XCTAssert(viewController.loaderIsShown)
        viewController.hideLoader()
    }
}
