//
//  MathLandView.swift
//  pia12iosscreens
//
//  Created by BillU on 2023-12-21.
//

import SwiftUI

struct MathLandView: View {
    
    @Binding var thenumber : Int
    
    var body: some View {
        
        HStack {
            
            VStack {
                Button(action: {
                    thenumber = thenumber + 1
                }) {
                    MathBoxView(boxtitle: "PLUS")
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                }
                Button(action: {
                    thenumber = thenumber - 1
                }) {
                    MathBoxView(boxtitle: "MINUS")
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                }
                Button(action: {
                    thenumber = 0
                }) {
                    MathBoxView(boxtitle: "RESET")
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                }
            }
            
            
            Spacer()
            
            Text(String(thenumber))
                .font(.largeTitle)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            Spacer()

        }
        .padding()
        
        
    }
}

#Preview {
    MathLandView(thenumber: .constant(9))
        
}
