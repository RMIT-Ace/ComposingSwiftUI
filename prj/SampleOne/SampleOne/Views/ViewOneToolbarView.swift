//
//  ViewOneToolbarView.swift
//  SampleOne
//
//  Created by Ace on 15/8/2025.
//

import SwiftUI

struct ViewOneToolbarView: View {
    var body: some View {
        HStack(spacing: 4) {
            NavigationLink {
                Text("Brand Page")
            } label: {
                Image("brand-logo")
            }
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
        .padding(0)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ViewOneToolbarView()
}
