//
//  StateAndDataFlowAppApp.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 01.08.2025.
//

import SwiftUI

@main
struct StateAndDataFlowAppApp: App {
    private let user = DataManager.shared.loadUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
