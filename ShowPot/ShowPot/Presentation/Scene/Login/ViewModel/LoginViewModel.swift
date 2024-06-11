//
//  LoginViewModel.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/1/24.
//

import Foundation

final class LoginViewModel: ViewModelType {
    
    var coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    struct Input { 
        
    }
    
    struct Output { 
        
    }
    
    func transform(input: Input) -> Output {
        
        return Output()
    }
}
