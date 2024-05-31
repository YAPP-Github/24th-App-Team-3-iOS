//
//  MainTabCoordinator.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/1/24.
//

import Foundation
import UIKit

class MainTabCoordinator: Coordinator {
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController: MainTabViewController = MainTabViewController()
        viewController.coordinator = self
        viewController.view.backgroundColor = .cyan
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
}

extension MainTabCoordinator {
    func didLoggedOut() {
        self.parentCoordinator?.removeChildCoordinator(child: self)
        self.navigationController.popViewController(animated: true)
    }
}
