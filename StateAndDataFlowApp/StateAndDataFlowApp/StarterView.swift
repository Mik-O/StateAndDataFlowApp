//
//  StarterView.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 05.08.2025.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Group {
            if user.isRegister {
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
