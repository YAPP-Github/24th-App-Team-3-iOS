//
//  LogHelper.swift
//  ShowPot
//
//  Created by 이건준 on 6/12/24.
//

import Foundation

struct LogHelper {
    
extension LogHelper {
    enum Level {
        /// 디버깅 로그
        case debug
        
        /// 오류 해결에 필수적이지않지만 유용한 정보 로그
        case info
        
        /// 오류 로그
        case error
        
        /// 문제 해결에 절대적으로 필요한 정보 로그
        case notice
        
        fileprivate var category: String {
            switch self {
            case .debug:
                return "🟡 DEBUG"
            case .info:
                return "🟠 INFO"
            case .error:
                return "🔴 ERROR"
            case .notice:
                return "🟢 NOTICE"
            }
        }
    }
}
