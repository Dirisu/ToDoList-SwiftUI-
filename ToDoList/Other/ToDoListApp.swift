//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Marvellous Dirisu on 30/07/2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
