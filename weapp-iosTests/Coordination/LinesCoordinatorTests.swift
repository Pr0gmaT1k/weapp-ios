//
//  LinesCoordinatorTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

final class LinesCoordinatorTests: XCTestCase {
    // MARK: - Properties
    private var coordinator: LinesCoordinator!
    private var callDidFinish: XCTestExpectation?

    // MARK:- Tests
    override func setUp() {
        super.setUp()
        coordinator = LinesCoordinator()
        coordinator.delegate = self
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDidFinish() {
        callDidFinish = expectation(description: "did finish")
        coordinator.delegate?.linesCoordinatorDidFinish(self.coordinator)
        wait(for: callDidFinish!)
    }
}

// MARK:- Lines Coordinator Did finish
extension LinesCoordinatorTests: LinesCoordinatorDelegate {
    func push(vc: UIViewController, animated: Bool) {}

    func pop(animated: Bool) {}

    func linesCoordinatorDidFinish(_ coordinator: LinesCoordinator) {
        callDidFinish?.fulfill()
    }
}
