//
//  RegisterView.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 05.08.2025.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter yor name", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                Image(systemName: "chekmark.circle")
                Text("Ok")
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

#Preview {
    RegisterView()
}
