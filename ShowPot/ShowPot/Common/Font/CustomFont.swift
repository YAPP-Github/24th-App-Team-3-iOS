//
//  Font.swift
//  ShowPot
//
//  Created by Daegeon Choi on 6/16/24.
//

import Foundation

// MARK: 커스텀 폰트 관리

/// 커스텀 폰트 종류
enum CustomFont: String {
    case pretendard = "Pretendard"
    case oswald = "oswald"
}

/// 커스텀 폰트의 스타일 종류
/// - Warning: 폰트 종류에 따라 지원하지 않는 Style이 있을 수 있어 주의 요망
enum CustomFontStyle: String {
    case black = "Black"
    case extraBold = "ExtraBold"
    case bold = "Bold"
    case semiBold = "SemiBold"
    case medium = "Medium"
    case regular = "Regular"
    case light = "Light"
    case extraLight = "ExtraLight"
    case thin = "Thin"
}
