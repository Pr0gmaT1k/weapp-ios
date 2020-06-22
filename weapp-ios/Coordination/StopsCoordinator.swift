//
//  StopsCoordinator.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

// MARK: - Delegate
protocol StopsCordinatorDelegate: NavDelegate {
    func stopsCoordinatorDidFinish(_ coordinator: StopsCoordinator)
}

// MARK:- Coordinator
final class StopsCoordinator: CoordinatorPresentable {
    // MARK:- Properties
    weak var delegate: StopsCordinatorDelegate?
    var childCoordinators: [Coordinator] = []
    var rootViewController: StopsVC

    init() {
        rootViewController = StopsVC()
        rootViewController.delegate = self
    }

    func start() {}
}

// MARK:- StopsVC Delegate
extension StopsCoordinator: StopsVCDelegate {
}
