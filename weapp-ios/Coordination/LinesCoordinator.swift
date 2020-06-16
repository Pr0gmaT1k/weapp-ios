//
//  LinesCoordinator.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

// MARK: - Delegate
protocol LinesCoordinatorDelegate: NavDelegate {
    func linesCoordinatorDidFinish(_ coordinator: LinesCoordinator)
}

// MARK:- Coordinator
final class LinesCoordinator: CoordinatorPresentable {
    // MARK:- Properties
    weak var delegate: LinesCoordinatorDelegate?
    var childCoordinators: [Coordinator] = []
    var rootViewController: LinesVC

    init() {
        rootViewController = StoryboardScene.Lines.linesVC.instantiate()
        rootViewController.delegate = self
    }

    func start() {}
}

// MARK:- StopsVC Delegate
extension LinesCoordinator: LinesVCDelegate {
}
