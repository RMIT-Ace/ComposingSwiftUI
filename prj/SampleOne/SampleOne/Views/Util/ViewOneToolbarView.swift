//
//  ViewOneToolbarView.swift
//  SampleOne
//
//  Created by Ace on 15/8/2025.
//

import SwiftUI

/// Reusable view of type ToolbarContent. Provide consistent toolbar for all subviews
/// of View One.
///
struct ViewOneToolbarView: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            HStack(spacing: 4) {
                NavigationLink {
                    Text("Brand Page")
                } label: {
                    Image("brand-logo")
                }
            }
        }
        ToolbarItem(placement: .topBarTrailing) {
            HStack {
                Spacer()
                NavigationLink {
                    Text("User Status")
                } label: {
                    Image(systemName: "drop")
                }
                NavigationLink {
                    Text("User Profile")
                } label: {
                    Text("🐶")
                        .font(.system(size: 30))
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        Text("Content")
            .toolbar {
                ViewOneToolbarView()
            }
    }
}
