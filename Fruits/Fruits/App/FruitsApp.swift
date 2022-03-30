//
//  FruitsApp.swift
//  Fruits
//
//  Created by Manuel Alvarez on 29/03/2022.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }            
        }
        
    }
}
