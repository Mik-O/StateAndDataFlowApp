//
//  StateAndDataFlowAppApp.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 01.08.2025.
//

import SwiftUI

@main
struct StateAndDataFlowAppApp: App {
    @StateObject private var user = UserManager()
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}
