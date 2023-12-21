//
//  MathBoxView.swift
//  pia12iosscreens
//
//  Created by BillU on 2023-12-21.
//

import SwiftUI

struct MathBoxView: View {
    
    @State var boxtitle : String
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                Text(boxtitle)

            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: geometry.size.width)
            .background(.red)
        }
        
    }
}

#Preview {
    MathBoxView(boxtitle: "ABC")
}
