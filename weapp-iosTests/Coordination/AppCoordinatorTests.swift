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

    func testChildCoordinator() {
        coordinator.addChildCoordinator(coordinator)
        XCTAssert(coordinator.childCoordinators.count == 2)
        coordinator.removeChildCoordinator(coordinator)
        XCTAssert(coordinator.childCoordinators.count == 1)
    }

    func testOpenDeeplink() {
        coordinator.open(deepLink: .lines)
        coordinator.open(deepLink: .saved)
        coordinator.open(deepLink: .stops)
    }

    func testPresentCoordinator() {
        coordinator.presentCoordinator(SavedCoordinator(), animated: true)
        XCTAssert(coordinator.childCoordinators.last is SavedCoordinator)
    }

    func testDismissCoordinator() {
        let savedCoo = SavedCoordinator()
        coordinator.presentCoordinator(savedCoo, animated: true)
        coordinator.dismissCoordinator(savedCoo, animated: true)
        XCTAssert((coordinator.childCoordinators.last is SavedCoordinator) == false)
    }
}

// MARK:- App Coordinator Did finish
extension AppCoordinatorTests: AppCoordinatorDelegate {
    func appCoordinatorDidFinish(_ coordinator: AppCoordinator) {
        callDidFinish?.fulfill()
    }
}
