//
//  StopsCoordinatorTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

final class StopsCoordinatorTests: XCTestCase {
    // MARK: - Properties
    private var coordinator: StopsCoordinator!
    private var callDidFinish: XCTestExpectation?

    // MARK:- Tests
    override func setUp() {
        super.setUp()
        coordinator = StopsCoordinator()
        coordinator.delegate = self
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDidFinish() {
        callDidFinish = expectation(description: "did finish")
        coordinator.delegate?.stopsCoordinatorDidFinish(self.coordinator)
        wait(for: callDidFinish!)
    }
}

// MARK:- Stops Coordinator Did finish
extension StopsCoordinatorTests: StopsCordinatorDelegate {
    func push(vc: UIViewController, animated: Bool) {}

    func pop(animated: Bool) {}

    func stopsCoordinatorDidFinish(_ coordinator: StopsCoordinator) {
        callDidFinish?.fulfill()
    }
}
