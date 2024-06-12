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
    
    static func debug(_ message: String, privacy: Privacy = .public, fileID: String = #fileID, line: Int = #line, function: String = #function) {
        let logger = Logger(subsystem: LogHelper.subsystem, category: Level.debug.category)
        let logMessage = "\(message)"
        let fileIDAndLine = "[\(fileID):\(line)]"
        
        switch privacy {
            case .privacy:
                logger.debug("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .private)")
            case .public:
                logger.debug("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .public)")
            case .auto:
                logger.debug("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .auto)")
        }
    }
    
    static func info(_ message: String, privacy: Privacy = .public, fileID: String = #fileID, line: Int = #line, function: String = #function) {
        let logger = Logger(subsystem: LogHelper.subsystem, category: Level.info.category)
        let logMessage = "\(message)"
        let fileIDAndLine = "[\(fileID):\(line)]"
        
        switch privacy {
            case .privacy:
                logger.info("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .private)")
            case .public:
                logger.info("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .public)")
            case .auto:
                logger.info("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .auto)")
        }
    }
    
    static func error(_ message: String, privacy: Privacy = .public, fileID: String = #fileID, line: Int = #line, function: String = #function) {
        let logger = Logger(subsystem: LogHelper.subsystem, category: Level.error.category)
        let logMessage = "\(message)"
        let fileIDAndLine = "[\(fileID):\(line)]"
        
        switch privacy {
            case .privacy:
                logger.error("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .private)")
            case .public:
                logger.error("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .public)")
            case .auto:
                logger.error("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .auto)")
        }
    }
    
    static func notice(_ message: String, privacy: Privacy = .public, fileID: String = #fileID, line: Int = #line, function: String = #function) {
        let logger = Logger(subsystem: LogHelper.subsystem, category: Level.notice.category)
        let logMessage = "\(message)"
        let fileIDAndLine = "[\(fileID):\(line)]"
        
        switch privacy {
            case .privacy:
                logger.notice("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .private)")
            case .public:
                logger.notice("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .public)")
            case .auto:
                logger.notice("\(fileIDAndLine, align: .left(columns: 30)) \(function, align: .left(columns: 50)) \(logMessage, privacy: .auto)")
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
