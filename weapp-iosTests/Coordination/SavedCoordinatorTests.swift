//
//  SavedCoordinatorTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

final class SavedCoordinatorTests: XCTestCase {
    // MARK: - Properties
    private var coordinator: SavedCoordinator!
    private var callDidFinish: XCTestExpectation?

    // MARK:- Tests
    override func setUp() {
        super.setUp()
        coordinator = SavedCoordinator()
        coordinator.delegate = self
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDidFinish() {
        callDidFinish = expectation(description: "did finish")
        coordinator.delegate?.savedCoordinatorDidFinish(self.coordinator)
        wait(for: callDidFinish!)
    }
}

// MARK:- Saved Coordinator Did finish
extension SavedCoordinatorTests: SavedCoordinatorDelegate {
    func push(vc: UIViewController, animated: Bool) {}

    func pop(animated: Bool) {}

    func savedCoordinatorDidFinish(_ coordinator: SavedCoordinator) {
        callDidFinish?.fulfill()
    }
}
