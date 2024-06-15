//
//  Environment.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/7/24.
//

import Foundation

/**
 각종 환경 변수를 관리하기 위한 열거형 
 - ***i.e.***
 `Environment.baseURL` 형식으로 사용
 - Note: `Info.plist` 파일에 값이 추가되거나, 이외의 공통 환경 변수가 추가되는 경우 enum의 Key 값을 추가한다.
 */
public enum Environment {
    
    /// 서버 API 사용을 위한 base url
    static let baseURL: String = {
        return Environment.value(key: "BASE_URL")
    }()
    
    /// 카카오 소셜 로그인을 위한 클라이언트 ID
    static let kakaoClientID: String = {
        return Environment.value(key: "KAKAO_CLIENT_ID")
    }()
    
    /// 구글 소셜 로그인을 위한 url schemes
    static let googleUrlSchemes: String = {
        return Environment.value(key: "GOOGLE_URL_SCHEMES")
    }()
    
    /// 구글 소셜 로그인을 위한 client ID
    static let googleClientID: String = {
        return Environment.value(key: "GOOGLE_CLIENT_ID")
    }()
    
    /// ShowPot 프로젝트에 해당하는 bundleID
    static let bundleID: String = {
        return Bundle.main.bundleIdentifier ?? "undefined"
    }()

}

// MARK: I/O 관련 코드
extension Environment {
    
    /// Info.plist 파일 Dictionary
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()
    
    /// 값 추출
    fileprivate static func value(key: String) -> String {
        guard let value = Environment.infoDictionary[key] as? String else {
            fatalError("No such file for key: \(key)")
        }
        
        return value
    }
}
