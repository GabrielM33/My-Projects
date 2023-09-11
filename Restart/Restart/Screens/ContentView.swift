//
//  ContentView.swift
//  Restart
//
//  Created by Gabriel Moraes on 27/4/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        // MAYBE YOU CAN FIX THE BACKGORUND COLOR BUG HERE
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
