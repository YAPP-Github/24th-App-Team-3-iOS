//
//  UILabel+Extension.swift
//  ShowPot
//
//  Created by 이건준 on 6/28/24.
//

import UIKit

extension UILabel {
    
    /// UILabel의 줄 높이를 설정합니다.
    /// - Parameters:
    ///   - lineHeightMultiple: UILabel의 줄 높이 배수 (예: 1.5 = 150%)
    ///   - string: UILabel에 설정할 텍스트
    func setLineHeight(lineHeightMultiple: CGFloat, string: String) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        let attributedString = NSAttributedString(
            string: string,
            attributes: [
                .paragraphStyle: paragraphStyle
            ]
        )
        
        self.attributedText = attributedString
    }
    
    /// UILabel의 자간을 설정합니다.
    /// - Parameters:
    ///   - letterSpacingPercent: UILabel의 자간 백분율 (예: -0.025 = -2.5%)
    ///   - string: UILabel에 설정할 텍스트
    func setLetterSpacing(letterSpacingPercent: CGFloat, string: String) {
        // Calculate the actual letter spacing from the percentage
        let letterSpacing = letterSpacingPercent * UIFont.systemFont(ofSize: self.font.pointSize).pointSize
        
        let attributedString = NSAttributedString(
            string: string,
            attributes: [
                .kern: letterSpacing
            ]
        )
        
        self.attributedText = attributedString
    }
    
    /// UILabel의 줄 높이와 자간을 폰트에 따라 설정합니다.
    func setLineHeightAndLetterSpacingForFont() {
        guard let currentText = self.text, let fontName = self.font?.fontName.split(separator: "-")[0] else { return }
        
        let lineHeightMultiple: CGFloat = 1.5
        var letterSpacing: CGFloat = 0.0
        
        switch fontName {
        case CustomFont.pretendard.rawValue:
            letterSpacing = -0.025
        case CustomFont.oswald.rawValue:
            letterSpacing = 0.0
        default:
            LogHelper.error("유효한 폰트종류가 아닙니다, 적용된 폰트이름을 확인해주세요.")
            return
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        let attributedString = NSAttributedString(
            string: currentText,
            attributes: [
                .paragraphStyle: paragraphStyle,
                .kern: letterSpacing,
                .font: self.font as Any
            ]
        )
        
        self.attributedText = attributedString
    }
}
