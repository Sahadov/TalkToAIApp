//
//  WelcomeView.swift
//  TalkToAIChat
//
//  Created by Dmitry Volkov on 15/08/2025.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var imageName: String = Constants.randomImage
    
    var body: some View {
        NavigationStack {
            ImageLoaderView(urlString: imageName)
                .ignoresSafeArea()
            
            VStack {
                Text("AI Chat")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .padding(.top, 24)
            
            VStack {
                NavigationLink {
                    OnboardingCompletedView()
                } label: {
                    Text("Get started")
                        .callToActionButton()
                }
                
                Text("Already have an account? Sign in!")
                    .underline()
                    .font(.body)
                    .padding(8)
                    .tappableBackground()
                    .onTapGesture {
                        
                    }
            }
            .padding(16)
            
            HStack(spacing: 8) {
                Link(destination: URL(string: Constants.privacyPolicyUrl)!) {
                    Text("Terms of Service")
                }
                Circle()
                    .fill(.accent)
                    .frame(width: 4, height: 4)
                Link(destination: URL(string: Constants.termsOfUseUrl)!) {
                    Text("Privacy Policy")
                }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
