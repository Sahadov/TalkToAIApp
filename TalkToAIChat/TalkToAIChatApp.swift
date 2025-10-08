//
//  TalkToAIChatApp.swift
//  TalkToAIChat
//
//  Created by Dmitry Volkov on 14/08/2025.
//

import SwiftUI
import Firebase

@main
struct TalkToAIChatApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            AppView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
