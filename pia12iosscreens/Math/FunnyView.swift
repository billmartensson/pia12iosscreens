//
//  FunnyView.swift
//  pia12iosscreens
//
//  Created by BillU on 2023-12-21.
//

import SwiftUI

struct FunnyView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @State var thenumber = 0
    
    var body: some View {
        
        if verticalSizeClass == .regular && horizontalSizeClass == .regular {
            MathipadView(thenumber: $thenumber)
        } else {
            if verticalSizeClass == .compact {
                MathLandView(thenumber: $thenumber)
            } else {
                MathPortView(thenumber: $thenumber)
            }
        }
        
        
        
        
        
        
    }
}

#Preview {
    FunnyView()
}
