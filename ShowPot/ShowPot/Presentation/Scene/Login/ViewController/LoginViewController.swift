//
//  LoginViewController.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/1/24.
//

import UIKit

import GoogleSignIn
import KakaoSDKUser
import KakaoSDKAuth
import RxSwift
import RxCocoa
import SnapKit
import Then

final class LoginViewController: BaseViewController {
    
    var coordinator: LoginCoordinator?
    private let disposeBag = DisposeBag()
    
    private let containerStackView = UIStackView().then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
    }
    
    private let googleSignInButton = GIDSignInButton()
    private let kakaoSignInButton = UIButton().then {
        $0.setImage(UIImage(resource: .kakaoLoginMediumNarrow), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayouts()
        setupConstraints()
        setupStyles()
        bind()
    }
    
    private func setupLayouts() {
        view.addSubview(containerStackView)
        _ = [googleSignInButton, kakaoSignInButton].map { containerStackView.addArrangedSubview($0) }
    }
    
    private func setupConstraints() {
        containerStackView.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        googleSignInButton.snp.makeConstraints {
            $0.height.equalTo(50)
        }
        
        kakaoSignInButton.snp.makeConstraints {
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
        
        kakaoSignInButton.rx.tap
            .subscribe(with: self) { owner, _ in
                let loginClosure: (OAuthToken?, Error?) -> Void = { oauthToken, error in
                    guard error == nil else {
                        // TODO: 건준 - 카카오톡 로그인 실패 Alert 띄우기
                        print(error!)
                        return
                    }
                    
                }
                
                if UserApi.isKakaoTalkLoginAvailable() {
                    // 카카오톡 로그인 api 호출 결과를 클로저로 전달
                    UserApi.shared.loginWithKakaoTalk(completion: loginClosure)
                } else { // 웹으로 로그인 호출
                    UserApi.shared.loginWithKakaoAccount(completion: loginClosure)
                }
            }
            .disposed(by: disposeBag)
    }
}
