//
//  ContentView.swift
//  SampleOne
//
//  Created by Ace on 15/8/2025.
//

import SwiftUI

/// A main view for this application.
///
/// A Tab View is used to demonstrate how application's user interfaces can be
/// segmented into separate sub-views.
///
struct ContentView: View {
    var body: some View {
        TabView {
            Tab("View 1", systemImage: "movieclapper") {
                ViewOneView()
            }
            Tab("View 2", systemImage: "fork.knife") {
                ViewTwoView()
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
