//
//  ViewTwoView.swift
//  SampleOne
//
//  Created by Ace on 26/8/2025.
//

import SwiftUI

struct ViewTwoView: View {
    
    @State private var vm: ViewTwoViewModel = .shared
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.programs, id: \.self) { program in
                    VStack(alignment: .center) {
                        ProgramPanelView(program)
                            .frame(width: 250)
                            .clipped(antialiased: true)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .toolbar { ViewOneToolbarView() }
        }
    }
}

#Preview {
    ViewTwoView()
}
