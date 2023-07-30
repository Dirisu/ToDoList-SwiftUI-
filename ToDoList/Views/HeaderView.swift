//
//  HeaderView.swift
//  ToDoList
//
//  Created by Marvellous Dirisu on 30/07/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.purple)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("To Do List")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                Text("Get Things Done")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
            }
            .padding(.top, 30)
        }
        .offset(y: -100)
        //sets the width of the rectangle to be wider than the screen size
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
