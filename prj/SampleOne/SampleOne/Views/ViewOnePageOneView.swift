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
    
    private var programs: [Program] = [
        Program(
            imageName: "marvel1",
            title: "Avenger End Game",
            subtitle: "2 Seasons·15 Episodes·90-120 Mins"
        ),
        Program(
            imageName: "marvel2",
            title: "Ironman and comrades",
            subtitle: "3 Seasons·30 Episodes·290-320 Mins"
        )
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
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(programs, id: \.self) { program in
                            ProgramPanelView(program)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ViewOnePageOneView()
}
