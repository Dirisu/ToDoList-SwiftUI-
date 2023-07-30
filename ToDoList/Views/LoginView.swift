//
//  LoginView.swift
//  ToDoList
//
//  Created by Marvellous Dirisu on 30/07/2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                // HEADER
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .purple)
                
                
                
                //LOGIN FORM
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButtonView(title: "Login", background: .purple)
                    {
                        viewModel.login()
                    }

                }
                .offset(y: -50)
                
                // CREATE ACCOUNT
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
