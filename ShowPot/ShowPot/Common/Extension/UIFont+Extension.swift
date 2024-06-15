//
//  UIFont+Extension.swift
//  ShowPot
//
//  Created by 이건준 on 6/15/24.
//

import UIKit

extension UIFont {
  
  enum Pretendard: String {
    
    // black
    case black = "Pretendard-Black"
    
    // bold
    case extraBold = "Pretendard-ExtraBold"
    case bold = "Pretendard-Bold"
    case semiBold = "Pretendard-SemiBold"
    
    // medium
    case medium = "Pretendard-Medium"
    
    // regular
    case regular = "Pretendard-Regular"
    
    // light
    case light = "Pretendard-Light"
    case extraLight = "Pretendard-ExtraLight"
    
    // thin
    case thin = "Pretendard-Thin"
  }
  
  enum Oswald: String {
      
      // light
      case extraLight = "Oswald-ExtraLight"
      case light = "Oswald-Light"
      
      // medium
      case medium = "Oswald-Medium"
      
      // regular
      case regular = "Oswald-Regular"
      
      // bold
      case bold = "Oswald-Bold"
      case semiBold = "Oswald-SemiBold"
  }
}
