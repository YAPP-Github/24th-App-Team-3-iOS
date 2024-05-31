//
//  AppCoordinator.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/1/24.
//

import Foundation
import UIKit

protocol Coordinator: class {
    var navigationController: UINavigationController { get }
    var parentCoordinator: Coordinator? { get set }
    var childCoordinators: [Coordinator] { get set }
    func start()
}

extension Coordinator {
    func removeChildCoordinator(child: Coordinator) {
        childCoordinators.removeAll { $0 === child }
    }
}

class AppCoordinator: Coordinator {
    
    let isLoggedin: Bool = false    // FIXME: 테스트용 데이터, Auth 구현 후 수정 필요
    
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator? = nil
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isLoggedin {
            self.showMainTabViewController()
        } else {
            self.showLoginViewController()
        }
    }
    
}

extension AppCoordinator {
    private func showLoginViewController() {
        let coordinator = LoginCoordinator(navigationController: self.navigationController)
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    
    private func showMainTabViewController() {
        let coordinator = MainTabCoordinator(navigationController: self.navigationController)
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
}
