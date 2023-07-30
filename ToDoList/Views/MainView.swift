//
//  ContentView.swift
//  ToDoList
//
//  Created by Marvellous Dirisu on 30/07/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationStack {
            LoginView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
