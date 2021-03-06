//
//  TabBarCoordinatorTests.swift
//  weapp-iosTests
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

final class TabBarCoordinatorTests: XCTestCase {
    // MARK: - Properties
    private var coordinator: TabBarCoordinator!
    private var callDidFinish: XCTestExpectation?
    private var callDidPush: XCTestExpectation?
    private var callDidPop: XCTestExpectation?
    private var callDidTapBack: XCTestExpectation?

    // MARK:- Tests
    override func setUp() {
        super.setUp()
        coordinator = TabBarCoordinator()
        coordinator.navigator.delegate = self
        coordinator.delegate = self
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDidFinish() {
        callDidFinish = expectation(description: "did finish")
        coordinator.delegate?.tabBarCoordinatorDidFinish(self.coordinator)
        wait(for: callDidFinish!)
    }

    func testDidPush() {
        callDidPush = expectation(description: "did push")
        coordinator.push(vc: UIViewController(), animated: true)
        wait(for: callDidPush!)
    }

    func testDidPop() {
        callDidPop = expectation(description: "did pop")
        coordinator.pop(animated: true)
        wait(for: callDidPop!)
    }

    func testStopsCoordinatorDidFinish() {
        callDidFinish = expectation(description: "")
        guard let subCoordinator = coordinator.childCoordinators.filter({ $0 is StopsCoordinator }).first as? StopsCoordinator else {
            assert(false, "could not found stop coordinator")
            return
        }
        subCoordinator.delegate?.stopsCoordinatorDidFinish(subCoordinator)
        wait(for: callDidFinish!)
    }

    func testLinesCoordinatorDidFinish() {
        callDidFinish = expectation(description: "")
        guard let subCoordinator = coordinator.childCoordinators.filter({ $0 is LinesCoordinator }).first as? LinesCoordinator else {
            assert(false, "could not found lines coordinator")
            return
        }
        subCoordinator.delegate?.linesCoordinatorDidFinish(subCoordinator)
        wait(for: callDidFinish!)
    }

    func testSavedCoordinatorDidFinish() {
        callDidFinish = expectation(description: "")
        guard let subCoordinator = coordinator.childCoordinators.filter({ $0 is SavedCoordinator }).first as? SavedCoordinator else {
            assert(false, "could not found saved coordinator")
            return
        }
        subCoordinator.delegate?.savedCoordinatorDidFinish(subCoordinator)
        wait(for: callDidFinish!)
    }
}

// MARK:- Tabbar Coordinator Delegate
extension TabBarCoordinatorTests: TabBarCoordinatorDelegate {
    func tabBarCoordinatorDidFinish(_ coordinator: TabBarCoordinator) {
        callDidFinish?.fulfill()
    }
}

// MARK:- Nav Delegate
extension TabBarCoordinatorTests: NavDelegate {
    func push(vc: UIViewController, animated: Bool) {
        callDidPush?.fulfill()
    }

    func pop(animated: Bool) {
        callDidPop?.fulfill()
    }
}
