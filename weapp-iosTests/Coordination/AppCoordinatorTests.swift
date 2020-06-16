//
//  AppCoordinatorTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

final class AppCoordinatorTests: XCTestCase {
    // MARK: - Properties
    private var coordinator: AppCoordinator!
    private var callDidFinish: XCTestExpectation?

    // MARK:- Tests
    override func setUp() {
        super.setUp()
        coordinator = AppCoordinator(window: UIWindow())
        coordinator.delegate = self
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDidFinish() {
        callDidFinish = expectation(description: "did finish")
        (coordinator.childCoordinators.first as? TabBarCoordinator)?.delegate?.tabBarCoordinatorDidFinish(TabBarCoordinator())
        wait(for: callDidFinish!)
    }
}

// MARK:- App Coordinator Did finish
extension AppCoordinatorTests: AppCoordinatorDelegate {
    func appCoordinatorDidFinish(_ coordinator: AppCoordinator) {
        callDidFinish?.fulfill()
    }
}
