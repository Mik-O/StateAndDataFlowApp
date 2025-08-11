//
//  StarterView.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 05.08.2025.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        Group {
            if userManager.nameIsValid {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

#Preview {
    StarterView()
        .environmentObject(UserManager())
}
