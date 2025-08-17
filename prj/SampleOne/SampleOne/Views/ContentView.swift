//
//  ContentView.swift
//  SampleOne
//
//  Created by Ace on 15/8/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Tab 1", systemImage: "circle") {
                ViewOneView()
            }
            Tab("Tab 2", systemImage: "triangle") {
                Text("View 2")
            }
            Tab("Tab 3", systemImage: "square") {
                Text("View 3")
            }
            Tab("Tab 4", systemImage: "diamond") {
                Text("View 4")
            }
            Tab("Tab 5", systemImage: "octagon") {
                Text("View 5")
            }
        }
    }
}

#Preview {
    ContentView()
}
