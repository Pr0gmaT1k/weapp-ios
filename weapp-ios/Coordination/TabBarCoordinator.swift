//
//  TabBarCoordinator.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

// MARK: - Delegate
protocol TabBarCoordinatorDelegate: class {
    func tabBarCoordinatorDidFinish(_ coordinator: TabBarCoordinator)
}

// MARK: - Coordinator
final class TabBarCoordinator: CoordinatorNavigable {
    // MARK: - Properties

    weak var delegate: TabBarCoordinatorDelegate?
    var childCoordinators: [Coordinator] = []
    var navigator: NavigatorType
    private let tabBarC: UITabBarController
    var rootViewController: UINavigationController

    // MARK: - Func
    init() {
        // Coordinators
        let stopsCoordinator = StopsCoordinator()
        let linesCoordinator = LinesCoordinator()
        let savedCoordinator = SavedCoordinator()

        childCoordinators = [stopsCoordinator, linesCoordinator, savedCoordinator]

        // TabBar Title
        stopsCoordinator.rootViewController.tabBarItem.title = "1"
        linesCoordinator.rootViewController.tabBarItem.title = "2"
        savedCoordinator.rootViewController.tabBarItem.title = "3"

        // TabBarVC
        tabBarC = UITabBarController()
        tabBarC.view.backgroundColor = .white
        tabBarC.tabBar.unselectedItemTintColor = .black
        tabBarC.viewControllers = [stopsCoordinator.rootViewController, linesCoordinator.rootViewController, savedCoordinator.rootViewController]

        // Navigation
        rootViewController = UINavigationController(rootViewController: tabBarC)
        rootViewController.navigationBar.isHidden = true
        rootViewController.modalPresentationStyle = .fullScreen
        rootViewController.modalTransitionStyle = .crossDissolve
        navigator = Navigator(navigationController: rootViewController)

        // Delegate (after all self properties initalized)
        stopsCoordinator.delegate = self
        linesCoordinator.delegate = self
        savedCoordinator.delegate = self
    }

    func open(deepLink: Deeplinkable) {
        switch deepLink {
        case .stops: tabBarC.selectedIndex = 0
        case .lines: tabBarC.selectedIndex = 1
        case .saved: tabBarC.selectedIndex = 2
        }
    }

    func start() {
        _ = childCoordinators.map { $0.start() }
    }
}

// MARK: - NavDelegate
extension TabBarCoordinator: NavDelegate {
    func push(vc: UIViewController, animated: Bool) {
        navigator.push(vc, animated: animated)
    }

    func pop(animated: Bool) {
        navigator.popViewController(animated: animated)
    }
}

// MARK:- SavedCoordinator Delegate
extension TabBarCoordinator: SavedCoordinatorDelegate {
    func savedCoordinatorDidFinish(_ coordinator: SavedCoordinator) {
        delegate?.tabBarCoordinatorDidFinish(self)
    }
}

// MARK:- LinesCoordinator Delegate
extension TabBarCoordinator: LinesCoordinatorDelegate {
    func linesCoordinatorDidFinish(_ coordinator: LinesCoordinator) {
        delegate?.tabBarCoordinatorDidFinish(self)
    }
}

// MARK:- StopsCoordinator Delegate
extension TabBarCoordinator: StopsCordinatorDelegate {
    func stopsCoordinatorDidFinish(_ coordinator: StopsCoordinator) {
        delegate?.tabBarCoordinatorDidFinish(self)
    }
}
