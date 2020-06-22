//
//  SavedCoordinator.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

// MARK: - Delegate
protocol SavedCoordinatorDelegate: NavDelegate {
    func savedCoordinatorDidFinish(_ coordinator: SavedCoordinator)
}

// MARK:- Coordinator
final class SavedCoordinator: CoordinatorPresentable {
    // MARK:- Properties
    weak var delegate: SavedCoordinatorDelegate?
    var childCoordinators: [Coordinator] = []
    var rootViewController: SavedVC

    init() {
        rootViewController = SavedVC()
        rootViewController.delegate = self
    }
    
    func start() {}
}

// MARK:- SavedVC Delegate
extension SavedCoordinator: SavedVCDelegate {
}
