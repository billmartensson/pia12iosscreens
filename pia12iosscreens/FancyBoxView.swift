//
//  FancyBoxView.swift
//  pia12iosscreens
//
//  Created by BillU on 2023-12-21.
//

import SwiftUI

struct FancyBoxView: View {
    
    @State var boxtitle = "ABC"
    
    var body: some View {
        VStack {
            Text(boxtitle)

        }
        .frame(width: 200.0, height: 200.0)
        .background(.green)
    }
}

#Preview {
    FancyBoxView()
}
