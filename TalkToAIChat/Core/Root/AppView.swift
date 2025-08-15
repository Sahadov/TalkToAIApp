//
//  AppView.swift
//  TalkToAIChat
//
//  Created by Dmitry Volkov on 14/08/2025.
//

import SwiftUI

struct AppView: View {
    @AppStorage("showTabbarView") var showTabBar: Bool = false
    
    var body: some View {
        AppViewBuilder(
            showTabBar: showTabBar,
            tabbarView: {
                TabBarView()
            },
            onboardingView: {
                TabBarView()
            }
        )
    }
}
