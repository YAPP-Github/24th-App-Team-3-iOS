//
//  LoginViewController.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/1/24.
//

import UIKit

import GoogleSignIn
import RxSwift
import RxCocoa
import SnapKit
import Then

final class LoginViewController: BaseViewController {
    
    var coordinator: LoginCoordinator?
    private let disposeBag = DisposeBag()
    
    private let containerStackView = UIStackView().then {
        $0.backgroundColor = .clear
    }
    
    private let googleSignInButton = GIDSignInButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayouts()
        setupConstraints()
        setupStyles()
        bind()
    }
    
    private func setupLayouts() {
        view.addSubview(containerStackView)
        containerStackView.addArrangedSubview(googleSignInButton)
    }
    
    private func setupConstraints() {
        containerStackView.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        googleSignInButton.snp.makeConstraints {
            $0.height.equalTo(50)
        }
    }
    
    private func setupStyles() {
        
    }
    
    private func bind() {
        
        // TODO: 최대건 - 애플 계정 추가 및 Google clientID, URL Schemes xcconfig로 빼기
        
        googleSignInButton.rx.controlEvent(.touchUpInside)
            .subscribe(with: self) { owner, _ in
                GIDSignIn.sharedInstance.signIn(withPresenting: owner) { result, error in
                  guard error == nil else { return }
                    
                }
            }
            .disposed(by: disposeBag)
    }
}
