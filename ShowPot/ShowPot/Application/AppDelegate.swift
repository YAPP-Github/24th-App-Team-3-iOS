//
//  AppDelegate.swift
//  ShowPot
//
//  Created by Daegeon Choi on 5/25/24.
//

import UIKit

import GoogleSignIn
import KakaoSDKCommon

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        KakaoSDK.initSDK(appKey: Environment.kakaoClientID)
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
        
        // MARK: 구글 소셜로그인을 할때에 인증 프로세스가 끝날 때 애플리케이션이 수신하는 URL을 적절히 처리
        // 참고하면 좋은 사이트 : https://firebase.google.com/docs/auth/ios/google-signin?hl=ko
        return GIDSignIn.sharedInstance.handle(url)
    }
    
}

