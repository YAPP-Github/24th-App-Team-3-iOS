//
//  SettingsViewController.swift
//  ShowPot
//
//  Created by Daegeon Choi on 5/25/24.
//

import Foundation

class SettingsViewController: ViewController {
    let viewHolder: SettingsViewHolder = .init()
    let viewModel: SettingsViewModel
    
    init(viewModel: SettingsViewModel) {
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
        
    }
}
