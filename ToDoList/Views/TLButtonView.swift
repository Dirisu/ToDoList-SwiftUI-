//
//  TLButtonView.swift
//  ToDoList
//
//  Created by Marvellous Dirisu on 30/07/2023.
//

import SwiftUI

struct TLButtonView: View {
    
    let title: String
    let background: Color
    let action: ()-> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .bold()
                    .foregroundColor(Color.white)
            }
        }
        .padding()
    }
}

struct TLButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TLButtonView(title: "Login", background: .blue) {
            // action
        }
    }
}
