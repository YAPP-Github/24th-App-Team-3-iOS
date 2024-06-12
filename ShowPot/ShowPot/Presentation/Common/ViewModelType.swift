//
//  ViewModelType.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/8/24.
//

import Foundation

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    @discardableResult
    func transform(input: Input) -> Output
}
