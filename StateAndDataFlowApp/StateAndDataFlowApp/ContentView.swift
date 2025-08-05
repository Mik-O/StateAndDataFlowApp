//
//  ContentView.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 01.08.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
                .padding()
            Spacer()
            
            ButtonView()
                .environmentObject(timer)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

struct ButtonView: View {
    @EnvironmentObject var timer: TimeCounter
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
        
    }
    
}
