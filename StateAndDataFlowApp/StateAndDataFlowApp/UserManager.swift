//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Таня Кожевникова on 05.08.2025.
//

import Combine

class UserManager: ObservableObject {
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}


struct User: Codable {
    var name = ""
    var isRegistered = false
}

