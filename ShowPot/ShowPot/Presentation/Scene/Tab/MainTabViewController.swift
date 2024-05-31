//
//  ViewController.swift
//  ShowPot
//
//  Created by Daegeon Choi on 5/25/24.
//

import UIKit

class MainTabViewController: BaseViewController {
    
    var coordinator: MainTabCoordinator?
    
    override func viewDidLoad() {
        let item = UIBarButtonItem(title: "로그아웃", style: .plain, target: self, action: #selector(logoutButtonDidTap))
        self.navigationItem.rightBarButtonItem = item
    }
    
    @objc
    func logoutButtonDidTap() {
        self.coordinator?.didLoggedOut()
    }
}
