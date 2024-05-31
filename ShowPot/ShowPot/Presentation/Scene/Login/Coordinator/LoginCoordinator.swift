//
//  LoginCoordinator.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/1/24.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController: LoginViewController = LoginViewController()
        viewController.coordinator = self
        viewController.view.backgroundColor = .yellow
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
}

extension LoginCoordinator {
    func didLoggedIn() {
        let coordinator = MainTabCoordinator(navigationController: navigationController)
        coordinator.parentCoordinator = parentCoordinator
        coordinator.start()
        parentCoordinator?.removeChildCoordinator(child: self)
    }
}
