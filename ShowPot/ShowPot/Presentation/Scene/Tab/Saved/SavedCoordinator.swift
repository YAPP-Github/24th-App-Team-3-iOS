//
//  SavedCoordinator.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/28/24.
//

import UIKit

class SavedCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController: SavedViewController = SavedViewController(viewModel: SavedViewModel(coordinator: self))
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
