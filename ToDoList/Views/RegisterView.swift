//
//  RegisterView.swift
//  ToDoList
//
//  Created by Marvellous Dirisu on 30/07/2023.
//

import SwiftUI

struct RegisterView: View {
    
  @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        
        VStack {
            // HEADER
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            // REGISTERATION FORM
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButtonView(title: "Create Account", background: .orange, action: {
                    // Register
                })
                
            }
            .offset(y: -50)
        }
    }
    
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
    
}
