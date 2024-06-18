//
//  BaseViewController.swift
//  ShowPot
//
//  Created by Daegeon Choi on 5/25/24.
//

import Foundation
import UIKit
import class RxSwift.DisposeBag

protocol BaseViewControllerPorotocol where Self: UIViewController {
    associatedtype ViewHolder: ViewHolderType
    associatedtype ViewModel: ViewModelType
    
    var viewHolder: ViewHolder { get }
    var viewModel: ViewModel { get }
}

extension BaseViewControllerPorotocol {
    func viewHolderConfigure() {
        viewHolder.place(in: view)
        viewHolder.configureConstraints(for: view)
    }
}

class BaseViewController: UIViewController  {
    
    /// A dispose bag. 각 ViewController에 종속적이다.
    final let disposeBag = DisposeBag()
    
    deinit {
        LogHelper.debug("called \(self)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LogHelper.debug("called \(self)")
        setupStyles()
        bind()
    }
    
    // 빈 영역 터치시 키보드 dismiss를 위한 코드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    /// 현재 ViewController의 view 관련 설정 코드
    ///
    /// ***i.e.*** self.title = "title"
    func setupStyles() { }
    
    /// ViewModel 바인딩에 필요한 코드
    func bind() { }
}

typealias ViewController = BaseViewController & BaseViewControllerPorotocol
