//
//  FancyNavView.swift
//  pia12iosscreens
//
//  Created by BillU on 2023-12-21.
//

import SwiftUI

struct FancyNavView: View {
    var body: some View {
        
        NavigationSplitView {
            VStack {
                Text("Sidebar")
                
                NavigationLink(destination: Text("HEJ")) {
                    Text("Läs mer...")
                }
            }
        } detail: {
            Text("Detail View")
        }
        
    }
}

#Preview {
    FancyNavView()
}
