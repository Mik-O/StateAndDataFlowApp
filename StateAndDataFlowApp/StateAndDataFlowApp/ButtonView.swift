//
//  ButtonView.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 11.08.2025.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
//        .frame(width: 200, height: 60)
//        .background(.red)
//        .cornerRadius(20)
//        .overlay(
//            RoundedRectangle(cornerRadius: 20)
//                .stroke(Color.black, lineWidth: 4)
//        )
        .buttonApperance(color)
        
    }
    
}

#Preview {
    ButtonView(title: "Some Action", color: .red, action: {})
}
