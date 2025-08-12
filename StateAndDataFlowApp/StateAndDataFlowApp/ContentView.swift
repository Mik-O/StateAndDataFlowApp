//
//  ContentView.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 01.08.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject var userManager: UserManager
    @Binding var isCompleteRegistr: Bool
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(title: timer.buttonTitle, color: .red) {
                    timer.startTimer()
                }
                
                Spacer()
                
                ButtonView(title: "LogOut", color: .blue) {
                    DataManager.shared.clear(userManager: userManager)
                    isCompleteRegistr.toggle()
                }
            }
        }
    }
}




