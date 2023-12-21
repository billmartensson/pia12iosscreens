//
//  LoginView.swift
//  pia12iosscreens
//
//  Created by BillU on 2023-12-21.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""

    
    
    var body: some View {
        VStack {
                        
            Text("Login")

            TextField("E-mail", text: $email)
            TextField("Password", text: $password)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Login")
            })
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
            .background(.gray)

            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Register")
            })
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
            .background(.gray)
        }
        .modifier(LoginHolder())
    }
}

#Preview {
    LoginView()
}


struct LoginHolder: ViewModifier {
    
    func body(content: Content) -> some View {
        if UIDevice.current.userInterfaceIdiom == .pad {
            content
                .frame(width: 600)
                .background(.yellow)

        } else {
            content
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.cyan)

        }
    }
}







struct Title: ViewModifier {
    
    @State var crad : CGFloat = 10
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: crad))
    }
}
