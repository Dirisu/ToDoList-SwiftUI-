//
//  User.swift
//  ToDoList
//
//  Created by Marvellous Dirisu on 30/07/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
