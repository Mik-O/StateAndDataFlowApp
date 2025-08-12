//
//  StarterView.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 05.08.2025.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var userManager: UserManager
    @State var isCopleteRegistr = false
    
    var body: some View {
        Group {
            if userManager.user.isRegistered {
                ContentView(isCompleteRegistr: $isCopleteRegistr)
            } else {
                RegisterView(isCompleteRegistr: $isCopleteRegistr)
            }
        }
    }
}

#Preview {
    StarterView()
        .environmentObject(UserManager())
}
