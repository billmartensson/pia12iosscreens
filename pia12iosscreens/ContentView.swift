//
//  ContentView.swift
//  pia12iosscreens
//
//  Created by BillU on 2023-12-21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @State var box1 = "Låda 1"
    @State var box2 = "Låda 2"

    var body: some View {
        VStack {
            
            Text("ABC")
                .onChange(of: verticalSizeClass) { newValue in
                    
                    if newValue == .compact {
                        print("ROTATE TO LANDSCAPE")
                    } else {
                        print("ROTATE TO PORTRAIT")
                    }
                    
                }
            
            if verticalSizeClass == .compact {
                //Text("LANDSCAPE")
                HStack {
                    FancyBoxView(boxtitle: box1)
                    FancyBoxView(boxtitle: box2)
                }
            } else {
                //Text("PORTRAIT")
                VStack {
                    FancyBoxView(boxtitle: box1)
                    FancyBoxView(boxtitle: box2)
                }
            }
            
            
            if verticalSizeClass == .compact {
                Text("V COMPACT")
            }
            if verticalSizeClass == .regular {
                Text("V REGULAR")
            }
            if horizontalSizeClass == .compact {
                Text("H COMPACT")
            }
            if horizontalSizeClass == .regular {
                Text("H REGULAR")
            }

            if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                
                Text("IPAD!!!")
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
