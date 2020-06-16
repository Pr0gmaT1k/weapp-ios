//
//  AppCoordinator.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

// MARK: - Delegate
protocol AppCoordinatorDelegate: class {
    func appCoordinatorDidFinish(_ coordinator: AppCoordinator)
}

/** The application's root `Coordinator`. */
final class AppCoordinator: CoordinatorPresentable {
    // MARK:- Properties
    weak var delegate: AppCoordinatorDelegate?
    var childCoordinators: [Coordinator] = []
    var rootViewController = UIViewController()

    // MARK:- funcs
    init(window: UIWindow) {
        self.rootViewController.view.backgroundColor = .white
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        let tabBarCoordinator = TabBarCoordinator()
        childCoordinators = [tabBarCoordinator]
        tabBarCoordinator.delegate = self
    }
    
    func start() {
        guard let first = childCoordinators.first as? BaseCoordinatorPresentable else { return }
        presentCoordinator(first, animated: true)
    }
}

// MARK:- TabBarCoordinatorDelegate
extension AppCoordinator: TabBarCoordinatorDelegate {
    func tabBarCoordinatorDidFinish(_ coordinator: TabBarCoordinator) {
        delegate?.appCoordinatorDidFinish(self)
    }
}
