//
//  ProgramPanelView.swift
//  SampleOne
//
//  Created by Ace on 17/8/2025.
//

import SwiftUI

struct ProgramPanelView: View {
    private var program: Program
    
    init(_ programe: Program) {
        self.program = programe
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(program.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(2)
            
            Text(program.title)
                .bold()
            
            Text(program.subtitle)
                .minimumScaleFactor(0.05)
                .foregroundStyle(Color.gray)
                .font(Font.subheadline)
        }
    }
}

#Preview {
    var programs: [Program] = [
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
    ScrollView(.horizontal) {
        HStack {
            ProgramPanelView(programs[0])
            ProgramPanelView(programs[1])
        }
    }
}
