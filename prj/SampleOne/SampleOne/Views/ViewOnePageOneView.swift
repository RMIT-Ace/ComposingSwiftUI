//
//  ViewOnePageOneView.swift
//  SampleOne
//
//  Created by Ace on 17/8/2025.
//

import SwiftUI

struct ViewOnePageOneView: View {
    
    @State private var breadcrumbs: [String] = [
        "Home", "View One", "Page One"
    ]
    
    @State private var sections: [String] = [
        "Week 1", "Beginner", "Start"
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                BreadcrumbView($breadcrumbs)
                    .foregroundStyle(Color.red)
                
                Text("Page One Title")
                    .font(.title)
                    .bold()
                
                Text("Page One Subtitle")
                    .font(.title2)
                    .bold()
                
                BreadcrumbView($sections)
            }
        }
    }
}

#Preview {
    ViewOnePageOneView()
}
