//
//  User.swift
//  ProtocolDelegate
//
//  Created by Dmitry Parhomenko on 15.03.2024.
//

import Foundation

struct User {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}
