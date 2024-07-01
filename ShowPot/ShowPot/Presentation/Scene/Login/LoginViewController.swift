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

final class LoginViewController: ViewController {
    
    let viewHolder: LoginViewHolder = .init()
    let viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewHolderConfigure()
    }
    
    override func setupStyles() {
        
    }
    
    override func bind() {
        
        // TODO: 최대건 - 애플 계정 추가 및 Google clientID, URL Schemes xcconfig로 빼기
        
        viewHolder.googleSignInButton.rx.controlEvent(.touchUpInside)
            .subscribe(with: self) { owner, _ in
                GIDSignIn.sharedInstance.signIn(withPresenting: owner) { result, error in
                    guard error == nil else { return }
                    
                }
            }
            .disposed(by: disposeBag)
        
        viewHolder.kakaoSignInButton.rx.tap
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
