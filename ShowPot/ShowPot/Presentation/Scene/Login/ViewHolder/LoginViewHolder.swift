//
//  LoginViewHolder.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/11/24.
//

import Foundation
import SnapKit
import GoogleSignIn

final class LoginViewHolder {
    
    let containerStackView = UIStackView().then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
    }
    
    let googleSignInButton = GIDSignInButton()
    let kakaoSignInButton = UIButton().then {
        $0.setImage(UIImage(resource: .kakaoLoginMediumNarrow), for: .normal)
    }
}

extension LoginViewHolder: ViewHolderType {
    
    func place(in view: UIView) {
        view.addSubview(containerStackView)
        _ = [googleSignInButton, kakaoSignInButton].map { containerStackView.addArrangedSubview($0) }
    }
    
    func configureConstraints(for view: UIView) {
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
    
}
