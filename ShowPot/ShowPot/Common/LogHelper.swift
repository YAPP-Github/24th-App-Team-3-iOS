//
//  LogHelper.swift
//  ShowPot
//
//  Created by 이건준 on 6/12/24.
//

import Foundation
import os.log

enum LogHelper {
    private static let subsystem = Bundle.main.bundleIdentifier!
    
    static func debug(_ message: String, level: Level, privacy: Privacy = .public) {
        let logger = Logger(subsystem: LogHelper.subsystem, category: level.category)
        let logMessage = "\(message)"
        
        switch privacy {
            case .privacy:
                logger.debug("\(logMessage, privacy: .private)")
            case .public:
                logger.debug("\(logMessage, privacy: .public)")
            case .auto:
                logger.debug("\(logMessage, privacy: .auto)")
        }
    }
    
    static func info(_ message: String, level: Level, privacy: Privacy = .public) {
        let logger = Logger(subsystem: LogHelper.subsystem, category: level.category)
        let logMessage = "\(message)"
        
        switch privacy {
            case .privacy:
                logger.info("\(logMessage, privacy: .private)")
            case .public:
                logger.info("\(logMessage, privacy: .public)")
            case .auto:
                logger.info("\(logMessage, privacy: .auto)")
        }
    }
    
    static func error(_ message: String, level: Level, privacy: Privacy = .public) {
        let logger = Logger(subsystem: LogHelper.subsystem, category: level.category)
        let logMessage = "\(message)"
        
        switch privacy {
            case .privacy:
                logger.error("\(logMessage, privacy: .private)")
            case .public:
                logger.error("\(logMessage, privacy: .public)")
            case .auto:
                logger.error("\(logMessage, privacy: .auto)")
        }
    }
    
    static func notice(_ message: String, level: Level, privacy: Privacy = .public) {
        let logger = Logger(subsystem: LogHelper.subsystem, category: level.category)
        let logMessage = "\(message)"
        
        switch privacy {
            case .privacy:
                logger.notice("\(logMessage, privacy: .private)")
            case .public:
                logger.notice("\(logMessage, privacy: .public)")
            case .auto:
                logger.notice("\(logMessage, privacy: .auto)")
        }
    }
}

// MARK: - LogHelper Enums

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
    
    enum Privacy {
        case `privacy`
        case `public`
        case auto
    }
}
