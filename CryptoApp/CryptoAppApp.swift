//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Cyril Vasilyev on 7.12.2024.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarBackButtonHidden()
            }
            .environmentObject(vm)
        }
    }
}
