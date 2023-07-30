//
//  LoginView.swift
//  ToDoList
//
//  Created by Marvellous Dirisu on 30/07/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // HEADER
                HeaderView()
                //LOGIN FORM
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        // login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.purple)
                            Text("Login")
                                .bold()
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding()

                }
                // CREATE ACCOUNT
                
                VStack {
                    Text("New around here?")
//                    Button("Create an Account") {
//                        // show registration page
//                    }
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
