//
//  LoginViewController.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/1/24.
//

import UIKit

import SnapKit
import Then

final class LoginViewController: BaseViewController {
    
    var coordinator: LoginCoordinator?
    
    private let containerStackView = UIStackView().then {
        $0.backgroundColor = .clear
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayouts()
        setupConstraints()
        setupStyles()
        
        let item = UIBarButtonItem(title: "로그인", style: .plain, target: self, action: #selector(self.loginButtonDidTap))
        self.navigationItem.rightBarButtonItem = item
    }
    
    private func setupLayouts() {
        view.addSubview(containerStackView)
    }
    
    private func setupConstraints() {
        containerStackView.snp.makeConstraints {
            $0.directionalEdges.equalToSuperview()
        }
    }
    
    private func setupStyles() {
        
    }
    
    @objc
    func loginButtonDidTap() {
        self.coordinator?.didLoggedIn()
    }
}
