//
//  SavedViewHolder.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/28/24.
//

import UIKit
import SnapKit

final class SavedViewHolder {
    
    let label = UILabel().then { label in
        label.text = "Saved"
    }
}

extension SavedViewHolder: ViewHolderType {
    
    func place(in view: UIView) {
        view.addSubview(label)
    }
    
    func configureConstraints(for view: UIView) {
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
}

