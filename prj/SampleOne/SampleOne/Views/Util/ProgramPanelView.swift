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
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading) {
                Image(program.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 230, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(2)
                
                Text(program.title)
                    .bold()
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)

                Text(program.subtitle)
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                    .foregroundStyle(Color.gray)
                    .font(Font.subheadline)
            }
            .padding(6)
            .frame(maxWidth: 238)
            .clipped()
            
            HStack {
                Text(program.leftBadge)
                    .padding(3)
                    .background(Color.red)
                    .font(Font.caption)
                Spacer()
                Text(program.rightBadge)
                    .font(Font.caption)
            }
            .foregroundStyle(Color.white)
            .padding()
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
