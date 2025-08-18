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
    let programs = ViewOneViewModel.shared.programs
    
    ScrollView(.horizontal) {
        HStack {
            ProgramPanelView(programs[0])
            ProgramPanelView(programs[1])
        }
    }
}
