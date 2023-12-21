//
//  MathipadView.swift
//  pia12iosscreens
//
//  Created by BillU on 2023-12-21.
//

import SwiftUI

struct MathipadView: View {
    
    @Binding var thenumber : Int
    
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                if geometry.size.width < geometry.size.height {
                    MathPortView(thenumber: $thenumber)
                } else {
                    MathLandView(thenumber: $thenumber)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            
        }
    }
}

#Preview {
    MathipadView(thenumber: .constant(3))
}
