//
//  NavigationLinkPanelView.swift
//  SampleOne
//
//  Created by Ace on 19/8/2025.
//

import SwiftUI

struct NavigationLinkPanelView<Content: View>: View {
    
    @ViewBuilder let destination: () -> Content
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.red
                HStack {
                    Image(systemName: "gift")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Watch together")
                        .font(Font.title3.bold())
                    Spacer()
                    Text(">")
                        .bold()
                }
                .padding(.horizontal)
                .frame(height: 100)
                .foregroundStyle(Color.white)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .background {
                // Workaround - Hide Chevron by putting link in .background
                NavigationLink("") {
                    destination()
                }
            }
        }
    }
}

#Preview {
    NavigationLinkPanelView {
        Text("Here!")
    }
    .frame(height: 100)
    .padding(20)
}
