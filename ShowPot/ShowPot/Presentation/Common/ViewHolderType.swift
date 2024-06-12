//
//  ViewHolderType.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/8/24.
//

import UIKit

protocol ViewHolderType {
    func place(in view: UIView)
    func configureConstraints(for view: UIView)
}
