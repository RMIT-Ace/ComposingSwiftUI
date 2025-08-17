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
        }
    }
}

#Preview {
    var programs: [Program] = [
        Program(imageName: "marvel1", title: "Avenger End Game"),
        Program(imageName: "marvel2", title: "Ironman and comrades")
    ]
    ScrollView(.horizontal) {
        HStack {
            ProgramPanelView(programs[0])
            ProgramPanelView(programs[1])
        }
    }
}
